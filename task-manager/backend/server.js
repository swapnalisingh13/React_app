require('dotenv').config();
const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();
app.use(cors());

// --------------------
// Database connection
// --------------------
const pool = mysql.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
  waitForConnections: true,
  connectionLimit: 10,
});
const db = pool.promise();

// --------------------
// API route
// --------------------
app.get('/getTasks/:telegramId', async (req, res) => {
  const telegramId = req.params.telegramId;

  try {
    // Step 1: Find the user
    const [userRows] = await db.execute(
      'SELECT id, role FROM users WHERE telegram_id = ?',
      [telegramId]
    );
    if (userRows.length === 0) {
      return res.status(404).json({ error: 'User not found' });
    }

    const user = userRows[0];

    // Step 2: Fetch tasks based on role
    let rows = [];

    if (user.role === 1) {
      // Admin / Manager: see their own tasks + tasks of employees under them
      rows = (
        await db.execute(
          `SELECT 
              t.id AS task_id,
              t.description,
              t.status,
              t.due_date,
              t.employee_id,
              t.project_id,
              u.first_name,
              u.last_name,
              u.email,
              u.phone_number,
              COALESCE(p.name, 'Miscellaneous Tasks') AS project_name,
              COALESCE(p.description, 'Tasks not part of any project') AS project_description,
              p.manager_id
           FROM tasks t
           LEFT JOIN projects p ON t.project_id = p.id
           LEFT JOIN users u ON u.id = t.employee_id
           WHERE t.employee_id = ? OR t.employee_id IN (SELECT id FROM users WHERE manager_id = ?)
          `,
          [user.id, user.id]
        )
      )[0];
    } else {
      // Employee: only their own tasks
      rows = (
        await db.execute(
          `SELECT 
              t.id AS task_id,
              t.description,
              t.status,
              t.due_date,
              t.employee_id,
              t.project_id,
              u.first_name,
              u.last_name,
              u.email,
              u.phone_number,
              COALESCE(p.name, 'Miscellaneous Tasks') AS project_name,
              COALESCE(p.description, 'Tasks not part of any project') AS project_description,
              p.manager_id
           FROM tasks t
           LEFT JOIN projects p ON t.project_id = p.id
           LEFT JOIN users u ON u.id = t.employee_id
           WHERE t.employee_id = ?`,
          [user.id]
        )
      )[0];
    }

    // Step 3: Build grouped and flat results
    const tasksByProject = {};
    const flatTasks = [];

    rows.forEach(row => {
      const projectKey = row.project_name;

      if (!tasksByProject[projectKey]) {
        tasksByProject[projectKey] = {
          project_name: row.project_name,
          project_description: row.project_description,
          tasks: []
        };
      }

      const taskObj = {
        id: row.task_id,
        description: row.description,
        status: row.status,
        due_date: row.due_date,
        first_name: row.first_name,
        last_name: row.last_name,
        employee: row.first_name ? `${row.first_name} ${row.last_name}` : null,
        email: row.email,
        phone_number: row.phone_number,
        project_id: row.project_id
      };

      tasksByProject[projectKey].tasks.push(taskObj);
      flatTasks.push(taskObj);
    });

    return res.json({
      role: user.role,
      projects: Object.values(tasksByProject),
      tasks: flatTasks
    });
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: err.message });
  }
});

// --------------------
// Start server
// --------------------
const PORT = process.env.PORT || 5001;
app.listen(PORT, () =>
  console.log(`Server running on http://localhost:${PORT}`)
);

/*
// Get user info + direct subordinates

app.get('/getUserInfo/:telegramId', async (req, res) => {
  const telegramId = req.params.telegramId;

  try {
    // Step 1: Get the user
    const [userRows] = await db.execute(
      `SELECT id, telegram_id, 
              COALESCE(first_name, '') AS first_name, 
              COALESCE(last_name, '') AS last_name, 
              COALESCE(role, 2) AS role   -- default to Employee if missing
       FROM users 
       WHERE telegram_id = ?`,
      [telegramId]
    );

    // If not found
    if (userRows.length === 0) {
      return res.status(404).json({ error: 'User not found' });
    }

    const user = userRows[0];

    // Step 2: Get subordinates (exclude the user themselves)
    const [subordinates] = await db.execute(
      `SELECT id, telegram_id, 
              COALESCE(first_name, '') AS first_name, 
              COALESCE(last_name, '') AS last_name, 
              COALESCE(role, 2) AS role
       FROM users 
       WHERE manager_id = ? AND id != ?`,
      [user.id, user.id]
    );

    return res.json({ user, subordinates });

  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: err.message });
  }
});

*/


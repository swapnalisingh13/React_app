import React, { useEffect, useState } from "react";
import "./App.css";

function App() {
  const urlParams = new URLSearchParams(window.location.search);
  const telegramIdFromUrl = urlParams.get("telegram_id");

  const [telegramId] = useState(telegramIdFromUrl);
  const [role, setRole] = useState(null);
  const [projects, setProjects] = useState([]);
  const [tasks, setTasks] = useState([]);
  const [statusFilter, setStatusFilter] = useState("pending");
  const [viewMode, setViewMode] = useState("employee");
  const [error, setError] = useState(null);
  const [selectedTask, setSelectedTask] = useState(null);

  const [expandedGroups, setExpandedGroups] = useState({});

  useEffect(() => {
    if (!telegramId) {
      setError("No Telegram ID provided.");
      return;
    }

    fetch(`http://localhost:5001/getTasks/${telegramId}`)
      .then(res => {
        if (!res.ok) throw new Error("No access");
        return res.json();
      })
      .then(data => {
        setRole(data.role);
        setProjects(data.projects || []);
        setTasks(data.tasks || []);
        setError(null);
      })
      .catch(() => {
        setError("You don't have access.");
      });
  }, [telegramId]);

  if (error) return <div style={{ padding: "20px" }}>{error}</div>;
  if (role === 2) {
    return <div style={{ padding: "20px" }}>You are employee and don’t have access.</div>;
  }

  // Filter tasks for employee view
  const filteredTasks = tasks.filter(task => task.status === statusFilter);
  const groupedByEmployee = {};
  filteredTasks.forEach(task => {
    const empName = `${task.first_name || ""} ${task.last_name || ""}`.trim();
    if (!groupedByEmployee[empName]) groupedByEmployee[empName] = [];
    groupedByEmployee[empName].push(task);
  });

  // Group tasks by status
  const groupedByStatus = { overdue: [], pending: [], completed: [] };
  tasks.forEach(task => {
    groupedByStatus[task.status]?.push(task);
  });

  // Handle task click for floating box
  const handleTaskClick = (e, task) => {
    const rect = e.currentTarget.getBoundingClientRect();
    const boxWidth = 220;
    let left = rect.left + rect.width + 10;
    const rightEdge = left + boxWidth;
    if (rightEdge > window.innerWidth - 10) left = rect.left - boxWidth - 10;

    setSelectedTask({
      ...task,
      position: { top: rect.top + window.scrollY - 10, left }
    });
  };

  const toggleExpand = key => {
    setExpandedGroups(prev => ({ ...prev, [key]: !prev[key] }));
  };

  return (
    <div style={{ padding: "20px", fontFamily: "Arial" }}>
      <h2>Task View</h2>

      {/* View mode dropdown */}
      <div style={{ marginBottom: "20px" }}>
        <label style={{ fontWeight: "bold", fontSize: "18px", marginRight: "10px" }}>
          Select View:
        </label>
        <select
          value={viewMode}
          onChange={e => setViewMode(e.target.value)}
          style={{ padding: "8px 12px", fontSize: "16px", fontWeight: "bold", border: "2px solid #333", borderRadius: "6px" }}
        >
          <option value="employee">Employee View</option>
          <option value="status">Status View</option>
          <option value="project">Project View</option>
        </select>
      </div>

      {/* Status filter for Employee and Project view */}
      {(viewMode === "employee" || viewMode === "project") && (
        <div style={{ marginBottom: "20px" }}>
          <label style={{ fontWeight: "bold", marginRight: "10px" }}>Filter by Status:</label>
          <select
            value={statusFilter}
            onChange={e => setStatusFilter(e.target.value)}
            style={{ padding: "5px 10px", fontSize: "14px" }}
          >
            <option value="pending">Pending</option>
            <option value="completed">Completed</option>
            <option value="overdue">Overdue</option>
          </select>
        </div>
      )}

      {/* Employee View */}
      {viewMode === "employee" && (
        <div className="kanban-table compact">
          {Object.keys(groupedByEmployee).length > 0 ? (
            <div className="kanban-row compact">
              {Object.entries(groupedByEmployee).map(([empName, empTasks]) => {
                const showAll = expandedGroups[empName];
                const tasksToShow = showAll ? empTasks : empTasks.slice(0, 10);
                return (
                  <div key={empName} className="kanban-column compact">
                    <h3>{empName}</h3>
                    {tasksToShow.map((task, index) => (
                      <div key={index} className="task-card compact" onClick={(e) => handleTaskClick(e, task)}>
                        {task.description}
                      </div>
                    ))}
                    {empTasks.length > 10 && (
                      <button className="show-more-btn" onClick={() => toggleExpand(empName)}>
                        {showAll ? "Show Less" : "Show More"}
                      </button>
                    )}
                  </div>
                );
              })}
            </div>
          ) : (
            <p>No tasks allotted.</p>
          )}
        </div>
      )}

      {/* Status View */}
      {viewMode === "status" && (
        <div className="kanban-table compact">
          <div className="kanban-row compact">
            {Object.entries(groupedByStatus).map(([status, statusTasks]) => {
              const showAll = expandedGroups[status];
              const tasksToShow = showAll ? statusTasks : statusTasks.slice(0, 10);
              return (
                <div key={status} className="kanban-column compact">
                  <h3>{status.charAt(0).toUpperCase() + status.slice(1)}</h3>
                  {tasksToShow.map((task, index) => (
                    <div key={index} className="task-card compact" onClick={(e) => handleTaskClick(e, task)}>
                      {task.description}
                    </div>
                  ))}
                  {statusTasks.length > 10 && (
                    <button className="show-more-btn" onClick={() => toggleExpand(status)}>
                      {showAll ? "Show Less" : "Show More"}
                    </button>
                  )}
                </div>
              );
            })}
          </div>
        </div>
      )}

      {/* Project View */}
      {viewMode === "project" && (
        <div className="kanban-table compact">
          {projects.length > 0 ? (
            <div className="kanban-row compact">
              {projects.map(project => {
                const key = project.project_name;
                const showAll = expandedGroups[key];

                // Filter tasks by status
                const filteredProjectTasks = project.tasks.filter(task => task.status === statusFilter);
                const tasksToShow = showAll ? filteredProjectTasks : filteredProjectTasks.slice(0, 10);

                return (
                  <div key={key} className="kanban-column compact">
                    <h3>{project.project_name}</h3>
                    <p style={{ fontSize: "12px", color: "#555" }}>{project.project_description}</p>
                    {tasksToShow.map((task, index) => (
                      <div key={index} className="task-card compact" onClick={(e) => handleTaskClick(e, task)}>
                        {task.description}
                      </div>
                    ))}
                    {filteredProjectTasks.length > 10 && (
                      <button className="show-more-btn" onClick={() => toggleExpand(key)}>
                        {showAll ? "Show Less" : "Show More"}
                      </button>
                    )}
                    {filteredProjectTasks.length === 0 && <p>No tasks for selected status</p>}
                  </div>
                );
              })}
            </div>
          ) : (
            <p>No projects found.</p>
          )}
        </div>
      )}

      {/* Floating Task Info Box */}
      {selectedTask && (
        <div className="floating-box" style={{ top: selectedTask.position?.top, left: selectedTask.position?.left }}>
          <button className="close-btn" onClick={() => setSelectedTask(null)}>✕</button>
          <h4>Task Details</h4>
          <p><b>Due Date:</b> {selectedTask.due_date || "Not set"}</p>
          <p><b>Employee:</b> {selectedTask.employee || `${selectedTask.first_name || ""} ${selectedTask.last_name || ""}`.trim() || "Unassigned"}</p>
          <p><b>Email:</b> {selectedTask.email || "Not available"}</p>
          <p><b>Phone:</b> {selectedTask.phone_number || "Not available"}</p>
          <p><b>Status:</b> {selectedTask.status}</p>
        </div>
      )}
    </div>
  );
}

export default App;

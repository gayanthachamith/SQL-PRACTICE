

CREATE TABLE tasks (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    completed BOOLEAN
);


INSERT INTO tasks (title, description, completed)
VALUES
('Learn SQL', 'Practice basic SQL commands', 0),
('Finish assignment', 'Complete SQLite practice task', 1),
('Review Java', 'Revise exception handling', 0);


SELECT * FROM tasks;


SELECT * FROM tasks
WHERE completed = 1;


UPDATE tasks
SET completed = 1
WHERE id = 1;

SELECT * FROM tasks;

DELETE FROM tasks
WHERE id = 3;

SELECT * FROM tasks;

-- DROP TABLE tasks;




CREATE TABLE tasks (
                       id NUMBER PRIMARY KEY,
                       title VARCHAR2(255) NOT NULL,
                       description VARCHAR2(500),
                       completed NUMBER(1) CHECK (completed IN (0,1))
);



CREATE SEQUENCE tasks_seq
    START WITH 1
    INCREMENT BY 1;




INSERT INTO tasks (id, title, description, completed)
VALUES (tasks_seq.NEXTVAL, 'Learn SQL', 'Practice basic SQL commands', 0);

INSERT INTO tasks (id, title, description, completed)
VALUES (tasks_seq.NEXTVAL, 'Finish assignment', 'Complete SQLite practice task', 1);

INSERT INTO tasks (id, title, description, completed)
VALUES (tasks_seq.NEXTVAL, 'Review Java', 'Revise exception handling', 0);


SELECT * FROM tasks;


SELECT * FROM tasks
WHERE completed = 1;


UPDATE tasks
SET completed = 1
WHERE id = 1;


DELETE FROM tasks
WHERE id = 3;

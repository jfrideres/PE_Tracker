CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email text NOT NULL,
  password text NOT NULL
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  school INT NOT NULL,
  expires DATE NOT NULL
);

CREATE TABLE schools (
  id SERIAL PRIMARY KEY, 
  name TEXT NOT NULL,
  address TEXT NOT NULL
);

CREATE TABLE observations (
  id SERIAL PRIMARY KEY,
  users_id INT NOT NULL,
  students_id INT NOT NULL,
  tasks_id INT NOT NULL,
  duration INTERVAL NOT NULL
);

CREATE TABLE observationInfo (
  id SERIAL PRIMARY KEY,
  observerName TEXT NOT NULL,
  instructorName TEXT NOT NULL,
  schoolName TEXT NOT NULL,
  observationDate DATE NOT NULL
  grade TEXT NOT NULL,
  topic TEXT NOT NULL,
  student INT NOT NULL
);

CREATE TABLE tasks (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

INSERT INTO tasks (name) VALUES 
  ('Planned Pres.');
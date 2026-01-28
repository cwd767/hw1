-- HOMEWORK ASSIGNMENT #1 - DEYOUNG --

    -- Terminal copy/paste: sqlite3 kmdb.sqlite3 // .mode column // .headers off
    -- SELECT STATEMENT LANGUAGE
        -- SELECT ____, ____ 
        -- FROM ____ 
        -- INNER JOIN ____ ON ____ = ____ 
        -- WHERE ____ (AND ____) 
        -- GROUP BY ____ 
        -- ORDER BY ____ (DESC) 
        -- LIMIT ____;

.mode column
.headers off

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS studios;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS agents;
DROP TABLE IF EXISTS roles;

.mode column
.headers off

-- Create STUDIOS table
CREATE TABLE studios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);
    -- Inserting STUDIOS data (based of sample output)
    INSERT INTO studios (name) VALUES ('Warner Bros.');

-- Create AGENTS table
CREATE TABLE agents (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);
    -- Inserting AGENTS data (based of sample output)
    INSERT INTO agents (name) VALUES ('Agent Smith');

-- Create MOVIES table
CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  year INTEGER,
  rating TEXT,
  studio_id INTEGER
);
    -- Inserting MOVIES data (based of sample output)
    INSERT INTO movies (title, year, rating, studio_id) VALUES 
    ('Batman Begins', 2005, 'PG-13', 1),
    ('The Dark Knight', 2008, 'PG-13', 1),
    ('The Dark Knight Rises', 2012, 'PG-13', 1);

-- Create ACTORS table
CREATE TABLE actors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  agent_id INTEGER
);
    -- Inserting ACTORS data (based of sample output)
    INSERT INTO actors (name) VALUES 
    ('Christian Bale'),
    ('Michael Caine'),
    ('Liam Neeson'),
    ('Katie Holmes'),
    ('Gary Oldman'),
    ('Heath Ledger'),
    ('Aaron Eckhart'),
    ('Maggie Gyllenhaal'),
    ('Tom Hardy'),
    ('Joseph Gordon-Levitt'),
    ('Anne Hathaway');

-- Create ROLES table
CREATE TABLE roles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  character TEXT,
  movie_id INTEGER,
  actor_id INTEGER
);
    -- Inserting ROLES data (based of sample output)
    INSERT INTO roles (character, movie_id, actor_id) VALUES 
    ('Bruce Wayne', 1, 1),
    ('Alfred', 1, 2),
    ('Ra''s Al Ghul', 1, 3),
    ('Rachel Dawes', 1, 4),
    ('Commissioner Gordon', 1, 5),
    ('Bruce Wayne', 2, 1),
    ('Joker', 2, 6),
    ('Harvey Dent', 2, 7),
    ('Alfred', 2, 2),
    ('Rachel Dawes', 2, 8),
    ('Bruce Wayne', 3, 1),
    ('Commissioner Gordon', 3, 5),
    ('Bane', 3, 9),
    ('John Blake', 3, 10),
    ('Selina Kyle', 3, 11);

-- OUTPUT --
.print "Homework Assignment #1 - DEYOUNG"
.print "======"
.print ""

-- Prints a header for the movies output
.print "Movies"
.print "======"
    SELECT 
.print ""

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""

-- Prints a header for the agent's list of represented actors
.print ""
.print "Represented by agent"
.print "===================="
.print ""
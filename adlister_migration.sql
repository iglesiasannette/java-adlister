DROP DATABASE IF EXISTS adlister_db;
CREATE DATABASE adlister_db;

USE adlister_db;

-- Create a database for our application
--
-- 1. Create a new database adlister_db and user that only has permissions on that database

-- 2. Create a migration script for two tables, users, and ads. They should have the
--    following structure:

CREATE TABLE users (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100),
  password VARCHAR(50) NOT NULL
);

CREATE TABLE ads (
  id INT UNSIGNED AUTO_INCREMENT,
  user_id INT UNSIGNED DEFAULT NULL,
  title VARCHAR(50) NOT NULL,
  description TEXT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE DATABASE IF NOT EXISTS userdb;
USE userdb;

CREATE TABLE IF NOT EXISTS users (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    years_of_experience INT NOT NULL,
    office_name VARCHAR(150) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT IGNORE INTO users
    (user_id, full_name, email, years_of_experience, office_name)
VALUES
    (1, 'User One',   'user.one@example.com',   2,  'Detroit Office'),
    (2, 'User Two',   'user.two@example.com',   5,  'Warren Office'),
    (3, 'User Three', 'user.three@example.com', 8,  'Arlington Office'),
    (4, 'User Four',  'user.four@example.com', 10, 'Austin Office'),
    (5, 'User Five',  'user.five@example.com', 4,  'New York Office'),
    (6, 'User Six',   'user.six@example.com',  7,  'Toronto Office');

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data into users table
INSERT INTO users (email) VALUES 
('diegodmitry@hotmail.com'),
('aiassistant2510@gmail.com');
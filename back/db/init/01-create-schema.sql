-- Initialization SQL run on first container start
-- Creates a simple schema and example table used by the app

CREATE SCHEMA IF NOT EXISTS app_schema;

CREATE TABLE IF NOT EXISTS app_schema.users (
  id SERIAL PRIMARY KEY,
  email TEXT NOT NULL UNIQUE,
  name TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);

-- Example row (comment out if you don't want sample data)
INSERT INTO app_schema.users (email, name)
VALUES ('example@localhost', 'Example User')
ON CONFLICT DO NOTHING;

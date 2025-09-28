    CREATE SCHEMA IF NOT EXISTS users_schema AUTHORIZATION sradmin;
    -- 2) Crear la tabla dentro del esquema
    CREATE TABLE IF NOT EXISTS users_schema.users (
    id SERIAL PRIMARY KEY,
    name  TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL
    );
    -- 3) (Opcional) Dar privilegios al usuario administrador
    GRANT ALL PRIVILEGES ON SCHEMA users_schema TO sradmin;
    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA users_schema TO sradmin;
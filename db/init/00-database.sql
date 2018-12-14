CREATE DATABASE db;

\connect db;

CREATE EXTENSION pgcrypto;

CREATE SCHEMA urbandata;
CREATE TABLE urbandata.import (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    raw TEXT,
    description TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COMMENT ON TABLE urbandata.import IS
'Raw data imports.';
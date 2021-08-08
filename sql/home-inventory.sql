CREATE TABLE user (
    id INTEGER PRIMARY KEY,
    username VARCHAR(32) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE asset (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES user(id),
    uuid CHAR(36) NOT NULL,
    name VARCHAR(255) NOT NULL,
    serial_no VARCHAR(255),
    description VARCHAR(255)
);

CREATE TABLE image (
    id INTEGER PRIMARY KEY,
    asset_id INTEGER NOT NULL REFERENCES asset(id),
    user_id INTEGER NOT NULL REFERENCES user(id),
    uuid CHAR(36) NOT NULL,
    name VARCHAR(255) NOT NULL,
    filename VARCHAR(255) NOT NULL,
    mimetype VARCHAR(32) NOT NULL
);

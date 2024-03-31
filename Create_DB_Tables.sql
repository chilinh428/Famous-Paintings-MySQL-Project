CREATE DATABASE famous_painting;

USE famous_painting;

CREATE TABLE artist (
    artist_id SMALLINT NOT NULL,
    full_name VARCHAR(30) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    middle_names VARCHAR(30),
    last_name VARCHAR(30) NOT NULL,
    nationality VARCHAR(30) NOT NULL,
    style VARCHAR(30) NOT NULL,
    birth SMALLINT NOT NULL,
    death SMALLINT NOT NULL
);

CREATE TABLE canvas_size (
    size_id SMALLINT NOT NULL,
    width TINYINT,
    height TINYINT,
    label VARCHAR(30)
);

CREATE TABLE museum (
    museum_id SMALLINT NOT NULL,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    city VARCHAR(30) NOT NULL,
    state VARCHAR(30),
    postal VARCHAR(30),
    country VARCHAR(30) NOT NULL
);

CREATE TABLE museum_hour (
    museum_id SMALLINT NOT NULL,
    day VARCHAR(30) NOT NULL,
    open VARCHAR(30) NOT NULL,
    close VARCHAR(30) NOT NULL
);

CREATE TABLE product_size (
    work_id MEDIUMINT NOT NULL,
    size_id SMALLINT NOT NULL,
    sale_price SMALLINT NOT NULL,
    regular_price SMALLINT NOT NULL
);

CREATE TABLE subject (
    work_id MEDIUMINT NOT NULL,
    subject VARCHAR(30)
);

CREATE TABLE work (
    work_id MEDIUMINT NOT NULL,
    name VARCHAR(100) NOT NULL,
    artist_id SMALLINT NOT NULL,
    style VARCHAR(30) NOT NULL,
    museum_id VARCHAR(10)
);

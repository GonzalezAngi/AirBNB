rem
rem
rem Author: Angie Lorena Gonzalez Martinez
rem Created at: Aug-31-2024
rem
rem

--creacion de las tablas
CREATE TABLE usuario (
    id VARCHAR2(20),
    updated_at DATE,
    created_at DATE,
    email VARCHAR2(25),
    password VARCHAR2(20),
    first_name VARCHAR2(15),
    last_name VARCHAR2(15)
);

CREATE TABLE Amenity (
    id VARCHAR2(20),
    updated_at DATE,
    created_at DATE,
    name VARCHAR2(25)
);

CREATE TABLE State (
    id VARCHAR2(20),
    updated_at DATE,
    created_at DATE,
    name VARCHAR2(25)
);

CREATE TABLE City (
    id VARCHAR(20),
    state_id VARCHAR2(25),
    updated_at DATE,
    created_at DATE
);

CREATE TABLE Place (
    id VARCHAR(20),
    updated_at DATE,
    created_at DATE,
    user_id VARCHAR2(25),
    name VARCHAR2(25),
    city_id VARCHAR2(25),
    descripcion VARCHAR2(4000),
    number_rooms INTEGER DEFAULT 0,
    max_guest INTEGER DEFAULT 0,
    price_by_night INTEGER DEFAULT 0,
    latitude FLOAT,
    longitude FLOAT
);

CREATE TABLE PlaceAmenity (
    amenity_id VARCHAR2(20),
    place_id VARCHAR2(20)
);

CREATE TABLE Review (
    id VARCHAR(20),
    updated_at DATE,
    created_at DATE,
    user_id VARCHAR2(25),
    place_id VARCHAR2(25),
    text VARCHAR2(500)
);
rem
rem
rem Author: Angie Lorena Gonzalez Martinez
rem Created at: Aug-31-2024
rem
rem

--Insertar datos
INSERT INTO Usuario (id, updated_at, created_at, email, password, first_name, last_name)
VALUES ('u1', SYSDATE, SYSDATE, 'alice@example.com', 'password123', 'Alice', 'Johnson');

INSERT INTO Usuario (id, updated_at, created_at, email, password, first_name, last_name)
VALUES ('u2', SYSDATE, SYSDATE, 'bob@example.com', 'password456', 'Bob', 'Smith');

--
INSERT INTO Amenity (id, updated_at, created_at, name)
VALUES ('a1', SYSDATE, SYSDATE, 'WiFi');

INSERT INTO Amenity (id, updated_at, created_at, name)
VALUES ('a2', SYSDATE, SYSDATE, 'Air Conditioning');
--

INSERT INTO State (id, updated_at, created_at, name)
VALUES ('s1', SYSDATE, SYSDATE, 'California');

INSERT INTO State (id, updated_at, created_at, name)
VALUES ('s2', SYSDATE, SYSDATE, 'New York');
--

INSERT INTO City (id, state_id, updated_at, created_at)
VALUES ('c1', 's1', SYSDATE, SYSDATE);

INSERT INTO City (id, state_id, updated_at, created_at)
VALUES ('c2', 's2', SYSDATE, SYSDATE);
--

INSERT INTO Place (id, updated_at, created_at, user_id, name, city_id, descripcion, number_rooms, max_guest, price_by_night, latitude, longitude)
VALUES ('p1', SYSDATE, SYSDATE, 'u1', 'Cozy Cottage', 'c1', 'A lovely cottage in the hills.', 3, 5, 150, 36.7783, -119.4179);

INSERT INTO Place (id, updated_at, created_at, user_id, name, city_id, descripcion, number_rooms, max_guest, price_by_night, latitude, longitude)
VALUES ('p2', SYSDATE, SYSDATE, 'u2', 'Modern Apartment', 'c2', 'A stylish apartment in the city center.', 2, 4, 200, 40.7128, -74.0060);
--

INSERT INTO PlaceAmenity (amenity_id, place_id)
VALUES ('a1', 'p1');

INSERT INTO PlaceAmenity (amenity_id, place_id)
VALUES ('a2', 'p2');
--

INSERT INTO Review (id, updated_at, created_at, user_id, place_id, text)
VALUES ('r1', SYSDATE, SYSDATE, 'u1', 'p1', 'Great place, very cozy!');

INSERT INTO Review (id, updated_at, created_at, user_id, place_id, text)
VALUES ('r2', SYSDATE, SYSDATE, 'u2', 'p2', 'Perfect location, will stay again!');

-- Ver tablas 
SELECT * FROM Usuario;

SELECT * FROM State;

SELECT * FROM Place;

SELECT * FROM City;

SELECT * FROM Review;

SELECT * FROM Amenity;

SELECT * FROM PlaceAmenity;







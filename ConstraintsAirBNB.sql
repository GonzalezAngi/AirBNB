rem
rem
rem Author: Angie Lorena Gonzalez Martinez
rem Created at: Aug-31-2024
rem
rem


--Creacion PKS
ALTER TABLE usuario
ADD CONSTRAINT id_pk PRIMARY KEY (id);
--
ALTER TABLE Amenity
ADD CONSTRAINT am_id_key PRIMARY KEY (id);
-- 
ALTER TABLE State
ADD CONSTRAINT st_id_key PRIMARY KEY (id);
--
ALTER TABLE City
ADD CONSTRAINT ct_id_key PRIMARY KEY (id);
--
ALTER TABLE Place
ADD CONSTRAINT pl_id_key PRIMARY KEY (id);
--
ALTER TABLE Review
ADD CONSTRAINT re_id_key PRIMARY KEY (id);

--Crear FKS

ALTER TABLE City 
ADD CONSTRAINT cit_id_fk FOREIGN KEY (state_id) REFERENCES State(id);
--
ALTER TABLE PlaceAmenity
ADD CONSTRAINT ame_id_fk FOREIGN KEY (amenity_id) REFERENCES Amenity(id);
ALTER TABLE PlaceAmenity
ADD CONSTRAINT place_id_fk FOREIGN KEY (place_id) REFERENCES Place(id);
--
ALTER TABLE Place
ADD CONSTRAINT use_id_fk FOREIGN KEY (user_id) REFERENCES Usuario(id);
ALTER TABLE Place
ADD CONSTRAINT city_id_fk FOREIGN KEY (city_id) REFERENCES City(id);
--
ALTER TABLE Review
ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES Usuario(id);
ALTER TABLE Review
ADD CONSTRAINT places_id_fk FOREIGN KEY (place_id) REFERENCES Place(id);
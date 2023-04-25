-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL,
  galaxy TEXT NOT NULL,
  planet_id Number 
);

INSERT INTO planets
  (name, orbital_period_in_years, orbits_around, galaxy, planet_id)
VALUES
  ('Earth', 1.00, 'The Sun', 'Milky Way', 1),
  ('Mars', 1.88, 'The Sun', 'Milky Way', 2),
  ('Venus', 0.62, 'The Sun', 'Milky Way', 3),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 4),
  ('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way'),
  ('Gliese 876 b', 0.23, 'Gliese 876', 'Milky Way');

  CREATE TABLE moons
  (
    id SERIAl PRIMARY KEY,
    moons text NOT NULL,
    planet_id
  )

  INSERT INTO moons (moons)
  VALUES ("The moon", "Phobos", "Deimos", "Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso")
  
  INSERT INTO moons (planet_id)
  VALUES (1, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4);
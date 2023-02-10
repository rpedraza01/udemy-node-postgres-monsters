CREATE TABLE monsters(
    id serial,
    name character varying(50),
    personality character varying(50)
);

CREATE TABLE habitats(
    id serial,
    name character varying(50),
    climate character varying(50),
    temperature int
);

CREATE TABLE lives(
    monster character varying(50),
    habitat character varying(50)
);

CREATE TABLE aliens(
    id serial,
    name character varying(50),
    personality character varying(50),
);

CREATE TABLE planets(
    id serial,
    name character varying(50),
    size character varying(50),
    gravity int
);

CREATE TABLE aliens_lives(
    alien character varying(50),
    planet character varying(50)
);

CREATE TABLE enemies(
    monster character varying(50),
    alien character varying(50)
);

INSERT INTO monsters(name, personality)
VALUES
('Fluffy', 'aggressive'),
('Noodles', 'impatient'),
('Rusty', 'passionate');

INSERT INTO habitats(name, climate, temperature)
VALUES
('desert', 'dry', 100),
('forest', 'haunted', 70),
('mountain', 'icy', 30);

INSERT INTO lives(monster, habitat)
VALUES
('Fluffy', 'desert'),
('Noodles', 'forest'),
('Rusty', 'mountain');

INSERT INTO aliens(name, personality)
VALUES
('Zorp', 'silly'),
('Glork', 'dumb'),
('Bnerp', 'mean');

INSERT INTO planets(name, size, gravity)
VALUES
('Earth', 'medium', 1),
('Zargon', 'large', 2),
('X-1', 'small', 0.5);

INSERT INTO aliens_lives(alien, planet)
VALUES
('Zorp', 'Earth'),
('Glork', 'Zargon'),
('Bnerp', 'X-1');

INSERT INTO enemies(monster, alien)
VALUES
('Fluffy', 'Zorp'),
('Noodles', 'Glork'),
('Rusty', 'Bnerp');
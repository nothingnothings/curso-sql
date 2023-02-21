




-- QUEREMOS ESTAS TABLES:

 
-- 1) EVENTS 

-- 2) LOCATIONS 

-- 3) CITIES 


-- 4) TAGS 


-- 5) TABLE INTERMEDIÁRIA ENTRE TAGS E EVENTS  (many-to-many)...



-- 6) USERS 


-- 7) TABLE INTERMEDIÁRIA ENTRE USERS E EVENTS 


-- 8) ORGANIZERS


CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE locations (
        id SERIAL PRIMARY KEY,
        title VARCHAR(255) UNIQUE NOT NULL,
        street VARCHAR(255) NOT NULL,
        house_number VARCHAR(10) NOT NULL,
        postal_code INT NOT NULL,
        city_id INT REFERENCES cities(id) ON DELETE RESTRICT
);


CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);


CREATE TABLE organizers (
    id SERIAL PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    user_id INT UNIQUE REFERENCES users(id) ON DELETE CASCADE --- é unique pq é JUSTAMENTE 1 'ONE-TO-ONE' relation
);


-- CREATE TABLE organizers (]
--     password VARCHAR(255) NOT NULL,
-- PODERÍAMOS SETTAR ASSIM, SIM (uma primary key de 1 table pode SER, AO MESMO TEMPO, FOREIGN KEY DE OUTRA TABLE... nada impede)...
--     user_id SERIAL PRIMARY KEY REFERENCES users(id) ON DELETE CASCADE
-- );


















CREATE TABLE tags (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) UNIQUE NOT NULL
);


CREATE TABLE events (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL CHECK(LENGTH(name) > 5),  -- usamos essa BUILT-IN function para _ ESCREVER ESSE CHECK AÍ, QUE VAI ASSEGURAR QUE DEVEMOS TER STRINGS COM LENGTH MAIOR DO QUE 5...
    date_and_time TIMESTAMP NOT NULL,
    image_url VARCHAR(500) UNIQUE NOT NULL,
    description TEXT NOT NULL,
    max_participants INT CHECK (max_participants > 0) NOT NULL,
    min_age INT CHECK (min_age > 0) NOT NULL,
    location_id INT REFERENCES locations(id) ON DELETE CASCADE, -- caso deletada a location desse negócio, o event relacionado é apagado tbm
    organizer_id INT REFERENCES organizers(id) ON DELETE CASCADE
);


CREATE TABLE events_users (
        id SERIAL PRIMARY KEY,
        event_id INT REFERENCES events,
        user_id INT REFERENCES users
);


CREATE TABLE tags_events (
     id SERIAL PRIMARY KEY,
     tag_id INT REFERENCES tags,
     event_id INT REFERENCES events
);
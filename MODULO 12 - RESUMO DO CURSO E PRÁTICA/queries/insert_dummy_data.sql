-- INSERT INTO tags (name) --- INSERT FIRST
-- VALUES ('socialize'), ('learn'), ('connect'), ('dinner'), ('breakfast');
-- INSERT INTO cities (name)
-- VALUES ('Munich'), ('Berlin'), ('Cologne'), ('Frankfurt'), ('Hamburg');
-- INSERT SECOND
--   INSERT INTO locations (title, street, house_number, postal_code, city_id)
-- VALUES 
--   ('Beerhall', 'Beerstreet', '5A', 80135, 2),
--   ('EXAMPLE 2', 'Beerstreet', '10', 81035, 2),
--   ('EXAMPLE 32', 'Gardenstreet', '101', 80031, 2),
--   ('The Green One', 'Veggiestreet', '12', '12141', 1),
--   ('EXAMPLE 2412', 'Park Plaza', '1', 11011, 1),
--   ('Partyhouse', 'Carnevalstreet', '3', 12345, 3),
--   ('EXAMPLE 211', 'Some Street', '18', 72657, 3);
-- INSERT INTO users (first_name, last_name, birth_date, email)
-- VALUES 
--   ('Max', 'Schwarz', '1989-05-01', 'max@test.com'),
--   ('Manuel', 'Lorenz', '1988-10-19', 'manuel@test.com'),
--   ('Julie', 'Barnes', '1986-02-13', 'julie@test.com'),
--   ('Michael', 'Smith', '1982-11-11', 'michael@test.com');
-- INSERT INTO organizers (password, user_id)
-- VALUES 
--   ('mypw1', 1), -- passwords would typically be stored encrypted
--   ('somepw2', 2);
-- INSERT INTO events (
--         name,
--         date_and_time,
--         image_url,
--         description,
--         max_participants,
--         min_age,
--         location_id,
--         organizer_id
--     )
-- VALUES (
--         'New in town 3 ',
--         '2022-02-01 17:30:00',
--         'path/to/image.jpg22',
--         'You are new in town? Join us and meet like-minded new people!',
--         20,
--         16,
--         3,
--         1
--     );
-- INSERT INTO tags_events (tag_id, event_id, name)
-- VALUES 
-- (1, 3, 'socialize'),
--     (1, 4, 'connect');
-- INSERT INTO events_users (event_id, user_id)
-- VALUES (1, 3),
--     (1, 4);
-- INSERT INTO events (
--         name,
--         date_and_time,
--         image_url,
--         description,
--         max_participants,
--         min_age
--     )
-- VALUES (
--         'Great Party',
--         '2022-10-29 16:30:00',
--         'www.google.com',
--         'Some party in a random place',
--         10,
--         16
--     ),
--     (
--         'Party 2',
--         '2021-10-29 16:30:00',
--         'www.yahoo.com',
--         'Who Knows',
--         12,
--         20
--     ),
--     (
--         'Party 3',
--         '2023-10-29 22:30:00',
--         'www.bing.com',
--         'Other party in a random place',
--         10,
--         16
--     );
    
    
    
     --     events (
    --     id SERIAL PRIMARY KEY,
    --     name VARCHAR(255) UNIQUE NOT NULL CHECK(LENGTH(name) > 5),  -- usamos essa BUILT-IN function para _ ESCREVER ESSE CHECK AÍ, QUE VAI ASSEGURAR QUE DEVEMOS TER STRINGS COM LENGTH MAIOR DO QUE 5...
    --     date_and_time TIMESTAMP NOT NULL,
    --     image_url VARCHAR(500) UNIQUE NOT NULL,
    --     description TEXT NOT NULL,
    --     max_participants INT CHECK (max_participants > 0) NOT NULL,
    --     min_age INT CHECK (min_age > 0) NOT NULL
    -- );











SELECT * FROM events;
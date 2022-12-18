-- INSERT INTO employers (
--         company_name,
--         "address",
--         yearly_revenue,
--         ishiring
--     ) VALUES ('fidelizou.me', 'OTTO', 200000, true);
-- INSERT INTO employers (
--         company_name,
--         ishiring,
--         yearly_revenue,
--         "address"
--     )
-- VALUES ('learning.inc', false, 1000000, 'London');
-- INSERT INTO employers (
--         company_name,
--         ishiring,
--         yearly_revenue,
--         "address"
--     )
-- VALUES ('Big Oil inc.', true, 5000000, 'France');
-- INSERT INTO employers (
--         company_name,
--         ishiring,
--         yearly_revenue,
--         "address"
--     )
-- VALUES ('Hipster Food', true, 2500000, 'Belgium');


--exemplo com 'default' na column de 'ishiring'...
INSERT INTO employers (
        company_name,
        yearly_revenue,
        "address"
    )
VALUES ('Some example', 2500000, 'Default location');




-- INSERT INTO conversations (user_name, employer_name, message, date_sent)
-- VALUES (
--         'Someone',
--         'Somewho',
--         'gibberish gibberish gibberish',
--          '2012-12-12'
--     );



    
INSERT INTO conversations (user_name, employer_name, message)
VALUES (
        'Someone',
        'Somewho',
        'gibberish gibberish gibberish',
    );
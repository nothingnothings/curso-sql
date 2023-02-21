SELECT *
FROM events AS e
    INNER JOIN locations AS l ON l.id = e.location_id
    INNER JOIN events_users AS eu ON eu.event_id = e.id -- precisamos fazer join com a INTERMEDIATE TABLE de 'users' e 'events' antes de realizarmos o join de 'users' (para ver quais users estão assignados a quais events)...
    INNER JOIN users AS u ON u.id = eu.user_id;





--     EX:



--     [
--   {
--     "id": 1,
--     "name": "New in town",
--     "date_and_time": "2022-02-01 17:30:00",
--     "image_url": "path/to/image.jpg",
--     "description": "You are new in town? Join us and meet like-minded new people!",
--     "max_participants": 20,
--     "min_age": 16,
--     "location_id": 3,
--     "organizer_id": 1,
--     "id (1)": 3,
--     "title": "EXAMPLE 32",
--     "street": "Gardenstreet",
--     "house_number": "101",
--     "postal_code": 80031,
--     "city_id": 2,
--     "event_id": 1,
--     "user_id": 3,
--     "first_name": "Julie",
--     "last_name": "Barnes",
--     "birth_date": "1986-02-13",
--     "email": "julie@test.com"
--   },
--   {
--     "id": 1,
--     "name": "New in town",
--     "date_and_time": "2022-02-01 17:30:00",
--     "image_url": "path/to/image.jpg",
--     "description": "You are new in town? Join us and meet like-minded new people!",
--     "max_participants": 20,
--     "min_age": 16,
--     "location_id": 3,
--     "organizer_id": 1,
--     "id (1)": 4,
--     "title": "EXAMPLE 32",
--     "street": "Gardenstreet",
--     "house_number": "101",
--     "postal_code": 80031,
--     "city_id": 2,
--     "event_id": 1,
--     "user_id": 4,
--     "first_name": "Michael",
--     "last_name": "Smith",
--     "birth_date": "1982-11-11",
--     "email": "michael@test.com"
--   }
-- ]
SELECT booking_date AS date,
    SUM(num_guests) as nr_guests
FROM bookings;
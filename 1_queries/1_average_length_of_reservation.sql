/*
    # Get the average duration of all reservations.

    * A query to see the average duration of a reservation.
*/
SELECT avg(end_date - start_date) AS average_duration
FROM reservations;
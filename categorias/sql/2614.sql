SELECT customers.name, rentals.rentals_date
FROM rentals LEFT JOIN customers
ON rentals.id_customers = customers.id
WHERE TO_CHAR(rentals.rentals_date, 'YYYY-MM-DD') LIKE '2016-09-%';
SELECT categories.name, SUM(products.amount) AS sum
FROM products LEFT JOIN categories
ON products.id_categories = categories.id
GROUP BY categories.name;
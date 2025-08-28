use AutoServices;

SELECT c.Name, car.brand, car.model, car.vin
FROM clients c
JOIN cars car ON c.id = car.client_id;


SELECT so.id, c.Name, car.brand, car.model, so.status, so.total_cost
FROM service_orders so
JOIN cars car ON so.car_id = car.id
JOIN clients c ON car.client_id = c.id
WHERE so.status != 'выдан';

SELECT s.service_type, s.description, s.cost, e.Name AS mechanic
FROM services s
JOIN employees e ON s.employee_id = e.id
WHERE s.order_id = 1;

SELECT name, manufacturer, price, quantity
FROM parts
ORDER BY quantity ASC;

SELECT so.id,
       SUM(s.cost) + SUM(op.cost) AS total_sum
FROM service_orders so
LEFT JOIN services s ON so.id = s.order_id
LEFT JOIN order_parts op ON so.id = op.order_id
WHERE so.id = 1
GROUP BY so.id;


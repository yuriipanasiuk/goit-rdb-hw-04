USE mydb;

SELECT 
	orders.id AS order_id,
    orders.date AS order_date,
    order_details.quantity,
    
    customers.id AS customer_id,
    customers.name AS customer_name,
    customers.address,
    customers.city,
    customers.country,
    
    shippers.id AS shipper_id,
    shippers.name AS shipper_name,
    
    employees.employee_id,
    employees.first_name,
    employees.last_name,
    
    products.id AS product_id,
    products.name AS product_name,
    products.unit,
    
    categories.id AS category_id,
    categories.name AS category_name,
    
    suppliers.id AS supplier_id,
    suppliers.name AS supplier_name
FROM order_details
INNER JOIN orders ON orders.id = order_details.order_id
INNER JOIN customers ON customers.id = orders.customer_id
INNER JOIN shippers ON shippers.id = orders.shipper_id
INNER JOIN employees ON employees.employee_id = orders.employee_id
INNER JOIN products ON products.id = order_details.product_id
INNER JOIN categories ON categories.id = products.category_id
INNER JOIN suppliers ON suppliers.id = products.supplier_id;

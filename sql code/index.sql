--first--

select first_name,country
from Customers
WHERE country = "USA"

--second--

SELECT customer_id, first_name, last_name
FROM Customers
WHERE customer_id NOT IN ( SELECT customer_id FROM Orders);

--third--

SELECT a.first_name, a.age, a.order_items, a.amount
FROM Customers a
JOIN Orders p ON a.customer_id = p.customer_id;
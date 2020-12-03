# You have the following tables with their fields:
# users: user_id, username, password, created_date
# orders: id, user_id, product_id, order_amount, order_date
# products: id, name
#
# In this test you will only be tested on Syntax and validity of the queries, there is no database system running on this laptop
#
# Write two SQL queries that will:
# - List all the users and sum their total life order amounts
#   (Expected output: user_id, username, lifetime_order_amount)
SELECT u.user_id, u.username, SUM(o.order_amount) as lifetime_order_amount
FROM users as u 
INNER JOIN orders as o
ON u.user_id = o.order_id
GROUP BY u.user_id
#
# - List all of the products and concatenate the usernames of the users who bought it
#   (Expected output: product_id, product_name, usernames) (usernames = john@packwire.com,phil@packwire.com)

SELECT p.id as product_id,p.name as product_name, group_concat(u.username separator ',') as usernames 
FROM products as p 
INNER JOIN orders as o
ON p.product_id = o.product_id
INNER JOIN users as u
ON u.user_id = o.user_id
GROUP BY p.product_id

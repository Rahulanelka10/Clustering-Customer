-- Melihat jumlah orang yang melakukan transaksi
--- 79.986 dari 100.000 users
SELECT COUNT(DISTINCT user_id) FROM order_items

-- Data Collection
SELECT users.id, COUNT(order_items.user_id) , 
		SUM(order_items.sale_price), users.age
	FROM users 
	INNER JOIN order_items 
	ON users.id=order_items.User_id
	group BY users.id, users.age
	order by users.id


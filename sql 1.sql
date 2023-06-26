SELECT 
    buyer_id AS 'Userid',
    l1_cat AS Main_Category,
    product_id AS 'Unique Items Bought',

    COUNT(order_id) AS 'Total Orders',
    SUM(gmv) AS 'Total Spent(RM)',
    MIN(order_date) AS 'Earliest Purchase Date',
    MAX(order_date) AS 'Last Purchased Date',
    SUM(gmv)/COUNT(order_id) AS 'Avg Spending per Order (RM)',
    SUM(price_before_discount)/COUNT(order_id) AS 'Avg Purchase Price (RM)'
FROM my_order_trans
WHERE buyer_id in (123456, 987654, 34567)
GROUP BY 1,2,3
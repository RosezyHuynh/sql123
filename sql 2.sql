SELECT 
    ROW_NUMBER() OVER (ORDER BY SUM(qty_sold) DESC) AS 'Rank',
    product_id as 'Product ID',
    product_name AS 'Item Name',
    l2_cat AS 'Category',
    CASE 
		when count(order_id) /30 >20 then 'Short Tail'
		when count(order_id) /30 between 10 and 20 then 'Mid Tail'
		else 'Long Tail'
    END AS Tier,
    MIN(price) AS 'Min Selling Price',
    SUM(qty_sold) AS 'Total Qty Sold',
    SUM(gmv) AS 'Total GMV',
    COUNT(order_id) AS 'Total Orders'
FROM my_order_trans
WHERE is_cross_border = 1
    AND MONTH(order_date) = MONTH(CURRENT_DATE - INTERVAL 1 MONTH)
GROUP BY 2,3,4
ORDER BY SUM(qty_sold) DESC
LIMIT 10;

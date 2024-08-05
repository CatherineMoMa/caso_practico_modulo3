select menu_item_id, item_name, category, price from menu_items
	
select order_details_id, order_id,order_date, order_time, item_id from order_details;

--Encontrar el número de artículos en el menú.--

Select item_name from menu_items;

--¿Cuál es el artículo menos caro y el más caro en el menú?--

Select price, item_name from menu_items
	order by price;

--¿Cuántos platos americanos hay en el menú?--
SELECT category, COUNT(category) AS cantidad
FROM menu_items
GROUP BY category;

--¿Cuál es el precio promedio de los platos?--

SELECT AVG(Price) as "promedio"
FROM menu_items;

--¿Cuántos pedidos únicos se realizaron en total?--

SELECT COUNT(DISTINCT  order_id) as total from order_details;

-- ¿Cuáles son los 5 pedidos que tuvieron el mayor número de artículos?--

--¿Cuándo se realizó el primer pedido y el último pedido?--

select min(order_date)as primer_pedido, max(order_date) as ultimo_pedido from order_details;

-- ¿Cuántos pedidos se hicieron entre el '2023-01-01' y el '2023-01-05'?--

SELECT count (order_date) FROM order_details
WHERE order_date BETWEEN '2023-01-01' AND '2023-01-05';

select *
from order_details T1
left join menu_items T2 on t1.item_id=menu_item_id;

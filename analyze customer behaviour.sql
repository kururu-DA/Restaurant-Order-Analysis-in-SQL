-- 1. comobine the menu_items table and order details table
select * from menu_items;
select * from order_details;

select * from order_details od  LEFT JOIN menu_items mi
 on od.item_id = mi.menu_item_id;
-- 2. what were the most and least order items? and what the categories?
select mi.item_name,mi.category , count(od.order_details_id) as num_of_parchases from order_details od  LEFT JOIN menu_items mi
   on od.item_id = mi.menu_item_id
 group by mi.item_name , mi.category
 order by num_of_parchases DESC
 ;
 
 -- 3. what were top 5 orders that spent the most money?
select od.order_id, sum(mi.price) as total_spend from order_details od 
	LEFT JOIN menu_items mi
   on od.item_id = mi.menu_item_id
 group by od.order_id 
 order by total_spend DESC 
 LIMIT 5
 ;
 
 --  4. view the details of highet spend order
 
 select  category , count(item_id) from order_details od 
	LEFT JOIN menu_items mi
   on od.item_id = mi.menu_item_id
 where order_id=440
 group by category
 ;
 
 --  5. view the details of 5 most spend orders
  select  category , count(item_id) from order_details od 
	LEFT JOIN menu_items mi
   on od.item_id = mi.menu_item_id
 where order_id IN(440 ,2075,1957,330 ,2675)
 group by category
 ;
   select order_id, category , count(item_id) from order_details od 
	LEFT JOIN menu_items mi
   on od.item_id = mi.menu_item_id
 where order_id IN(440 ,2075,1957,330 ,2675)
 group by order_id, category
 ;
 
 
 '440', '192.15'
'2075', '191.05'
'1957', '190.10'
'330', '189.70'
'2675', '185.10'


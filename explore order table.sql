-- 1. view order details table
select * from order_details;
 -- 2. show date range of orders
 select Min(order_date) As min_date, Max(order_date) as max_date from order_details;
 
 -- 3. how many orders withinthis date range
 select COUNT(distinct order_id) from order_details;
  --  4. how many item ordered within this date range
 select COUNT( *) from order_details;
 
   --  5. which order had most number of items
   
   select order_id , COUNT(order_id) from order_details 
   group by order_id 
   order by  COUNT(order_id) DESC;
-- 6. how many orders had more than 12 items
  select order_id,count(order_id) from order_details 
  group by order_id
  having count(item_id) > 12;
  
  select COUNT(*) from
   (select order_id,count(order_id) from order_details 
  group by order_id
  having count(item_id) > 12) as  num_rows;
  
  
  
  
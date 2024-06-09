USE restaurant_db;
-- 1. view menue itmes table 
select * from menu_items;

-- 2. find numner of items on the menue
select count(*) from menu_items;

-- 3. find least and most expensive items on the list
select * from menu_items
ORDER By price DESC
;
-- 4. how many italian dishes are in the menu
select COUNT(*)  'num_of_italian_dishes' from menu_items
where category ="Italian";
-- 5. find least and most expensive items in Italian dishes
select * from menu_items
where category ="Italian"
order by price
;
-- 6. how many dishes are in each category
select category,COUNT(*) from menu_items
GROUp by category

;
-- 7. what average dish price each category
select category,avg(price) as avg_price from menu_items
GROUp by category



 
select
c.id as customer_id
, c.name
, c.email
, min(created_at) as first_order_at
, count(distinct o.id) as number_of_orders
from `analytics-engineers-club.coffee_shop.customers` as c  
left join `analytics-engineers-club.coffee_shop.orders` as o on c.id = o.customer_id
group by all
order by first_order_at asc
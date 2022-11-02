use `inventory_control_management`;

select a.Product_ID,b.product_name,sum(a.Unit_Price_for_the_product*a.Quantity_of_Product_Purchased-a.Quantity_of_Product_Purchased*a.Discount) as Revenue,
sum(a.Quantity_of_Product_Purchased) as total_quantity_sold
from orders as a
left join product as b
on a.product_id = b.product_id
group by 1,2
order by 3 desc
limit 10;


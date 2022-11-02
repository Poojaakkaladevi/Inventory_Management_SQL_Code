use `inventory_control_management`;

select store_id,
round(avg(Revenue),4) as avg_weekly_sales_from_store
from (select concat(year(a.order_date),"_",week(Order_date)) as year_week,a.Store_ID,
sum(a.Unit_Price_for_the_product*a.Quantity_of_Product_Purchased-a.Quantity_of_Product_Purchased*a.Discount) as Revenue,
sum(a.Quantity_of_Product_Purchased) as total_quantity_sold
from orders as a
left join product as b
on a.product_id = b.product_id
group by 1,2
order by 1 ) AS sub_table
group by 1
order by 2 desc


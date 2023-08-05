use day2;

--  Which product has the highest estimated sale price, and what is the price? --
select product, estimated_sale_price from bank_inventory_pricing order by estimated_sale_price desc limit 1;

--  Calculate the total profit for each product (Estimated Sale Price - Purchase Cost)  -- 
select product, Sum(IFNULL(estimated_sale_price, 0)) - sum(IFNULL(purchase_cost, 0)) as total_product from bank_inventory_pricing group by product;

-- How many products have missing values in the "purchase_cost" column? -- 
Select count(*) as number_of_products from
(select product from day2.bank_inventory_pricing where purchase_cost is null group by product) as p;

-- Calculate the total purchase cost for each product. -- 
select product,  sum(IFNULL(purchase_cost, 0)) as total_purchase from bank_inventory_pricing group by product;

-- Calculate the total revenue for each product (Quantity * Estimated Sale Price). -- 
select product, Sum(quantity) * sum(estimated_sale_price) as total_revenue from bank_inventory_pricing group by product;



-- SATA ANALYSIS USING SQL
SELECT * FROM sales.customers;

-- 1.show total no. of customers
select count(*) from sales.customers;

-- 2.show transactions for chennai market(code='Mark001')
select * from sales.transactions;

-- 3.show distrinct product codes that were sold in cheenai
SELECT 
    *
FROM
    sales.transactions
WHERE
    market_code = 'Mark001';

select * from sales.products;

-- 4.show transaction where currency in us dollars
select distinct product_code from sales.transactions
where market_code='Mark001';

-- 5.Show transaction where currency in Us dollars
select * from sales.transactions where currency='USD';

-- 6. show transaction in 2020 join by date table 
select sales.transactions.* , sales.date.* from 
sales.transactions inner join sales.date 
on sales.transactions.order_date = sales.date.date
where sales.date.year=2020;

-- 7.show total revenue in year 2020
select sum(sales.transactions.sales_amount) from 
sales.transactions inner join sales.date 
on sales.transactions.order_date = sales.date.date
where sales.date.year=2020;

-- 8.show total revenue in year 2020, January Month
select sum(sales.transactions.sales_amount) from 
sales.transactions inner join sales.date 
on sales.transactions.order_date = sales.date.date
where sales.date.year=2020 and sales.date.month_name='January';

-- 9.show total revenue in year 2020 in chennai
select sum(sales.transactions.sales_amount) from 
sales.transactions inner join sales.date 
on sales.transactions.order_date = sales.date.date
where sales.date.year=2020 and sales.transactions.market_code='Mark001';
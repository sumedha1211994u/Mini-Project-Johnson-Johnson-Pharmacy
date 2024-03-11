#Mini Project Johnson & Johnson Pharmacy
#Project Questions :
#1. Retrieve all columns for all records in the dataset.
 select * from johnson;
 
 #2. How many unique countries are represented in the dataset?
 select count(distinct country) as D_country from johnson;

 select count(distinct country) as D_country,country from johnson
 group by country;
 
 #3. Select the names of all the customers on the 'Retail' channel.
select  `Customer Name` from johnson
where `Sub-channel` = 'Retail';

select  `Customer Name` ,`Sub-channel` from johnson
where `Sub-channel` = 'Retail';

#4. Find the total quantity sold for the 'Antibiotics' product class.
select sum(Quantity) as total_quantity,Sales from johnson
where `Product Class` = 'Antibiotics'
group by Sales ;

select sum(Quantity) as total_quantity, `product class`,Sales from johnson
where `Product Class` = 'Antibiotics'
group by `product class`,Sales;

#5. List all the distinct months present in the dataset.
select distinct Month from johnson;

#6. Calculate the total sales for each year.
select Year,sum(Sales) as total_sales from johnson
group by Year;

#7. Find the customer with the highest sales value.
select sum(Sales) as total_sale ,`Customer Name` from johnson
group by `Customer Name`
order by total_sale desc
limit 1;

select Sales,`Customer Name` from johnson
order by Sales desc
limit 1;

#8. Get the names of all employees who are Sales Reps and are managed by 'James Goodwill'.
 select `Customer Name`,`Name of Sales Rep`,`manager` from johnson
 where Manager = 'James Goodwill';

 #9. Retrieve the top 5 countries with the highest sales.
select Country,sum(Sales) as total_sales from johnson
group by Country
order by total_sales desc
limit 5;

select Country,Sales from johnson
order by Sales desc
limit 5;

#10. Calculate the average price of products in each sub-channel.
select `Sub-channel`,avg(Price) as avg_price from johnson
group by `Sub-channel`;

select `Product Name`,`Sub-channel`,avg(Price) as avg_price from johnson
group by `Product Name`,`Sub-channel`;

#11. Retrieve all sales made by employees from 'Germany' in the year 2018.
select Country,Year,Sales from johnson
where Country = 'Germany' and year = '2018';

#12. Calculate the total sales for each product class, for each
-- month, and order the results by year, month and product class.
select Year,Month,`Product Class`,sum(Sales) as total_sales from johnson
group by Year,Month,`Product Class`
order by Year,Month,`Product Class`;

#13. Find the top 3 sales reps with the highest sales in 2019.
select `Name of Sales Rep`,sum(Sales)as total_sales from johnson
where Year = '2019'
group by `Name of Sales Rep`
order by total_sales  desc
limit 3;

#14. Calculate the monthly total sales for each sub-channel and 
-- then calculate the average monthly sales for each sub-channel over the years.
select Month,`Sub-channel`,sum(Sales) as total_sales, Year,`Sub-channel`,avg(Sales) as avg_sales  from johnson
group by Month,`Sub-channel`,Year,`Sub-channel`;

-- Sum function is used to summerize the total values from one column and all rows
-- We can sum-up values by categorical column by using 'group by' clause.

Select sum(amount) AS Total_Amount, sum(boxes) AS Total_Boxes from Sales;

Select GeoID, sum(Amount) AS Total_Amount, sum(Boxes) AS Total_Boxes From Sales
Group By GeoID;

-- Min function is used to find the minimum value from any column for all rows
-- We can find minimum values for categorical columns by using 'group by' clause.

Select min(Amount) AS `Minimum Amount`, 
min(Boxes) AS `Minimum Boxes`,
min(Customers) AS `Minimum Customers` From Sales;

Select GeoID, min(Amount) AS `Minimum Amount`, 
min(Boxes) AS `Minimum Boxes`,
min(Customers) AS `Minimum Customers` From Sales
Group By GeoID;

-- Max function is used to find the maximum value from any column in all rows
-- We can find maximum values for categorical column by using 'Group By' Clause

Select max(Amount) AS `Maximum Amount`,
max(Boxes) AS `Maximum Boxes`,
max(Customers) AS `Maximum Customers`
From Sales;

Select PID, max(Amount) AS `Maximum Amount`,
max(Boxes) AS `Maximum Boxes`,
max(Customers) AS `Maximum Customers`
From Sales Group By PID Order By PID;

-- Avg function is used to calculate the average of values from column. 
-- by using 'group by' clause we can find the average of categories from categorical column

Select avg(Amount) `Average Amount`,
avg(Boxes) `Average Boxes`,
avg(customers) `Average Customers`
From Sales;

Select SPID, avg(Amount) `Average Amount`,
avg(Boxes) `Average Boxes`,
avg(customers) `Average Customers`
From Sales Group by SPID;

-- Abs function find the absolute value it means it converts the negative value to the 
-- positive values

Select abs(23 - 46), 23 - 46;

Select Amount - 5000, Abs(Amount - 5000) from Sales;

-- Count function can be used to count the rows 

Select count(*) from Sales;

Select GeoID, count(*) from Sales Group by GeoID;

-- Round function is used to round up the values, This can be used to round up in
-- Float values or in decimal values

Select round(23.78);

Select round(15.2344254);

Select Amount, Boxes, Amount / Boxes, round(Amount / Boxes) From sales;

-- Floor function is used to round down the value, this will always get the nearby
-- lowest value in from float. 

Select floor(12.87);

Select Amount, Boxes, Amount / Boxes, floor(Amount / Boxes) From sales;

-- Ceil function used to round up the value, this will always return the nearby max int
-- for every float or decimal number

Select ceil(12.111);

Select ceil(-12.094);

Select Amount, Boxes, Amount / Boxes, ceil(Amount / Boxes) From sales;

-- Sqrt function is used to find the square root of any number 

Select sqrt(4);

Select sqrt(134);

-- Mod function is used to find the reminder after division of two numbers

Select mod(12, 5);

Select mod(19, 4);

Select 12 mod 7;

Select 12313 mod 10;

Select 42442 mod 100;

-- Find the Year, Week and days from 3245 this number

Select floor(3245 / 365) as year, 
floor((3245 mod 365) / 7) as week, 
((3245 mod 365) / 7) mod 7 As Days; 


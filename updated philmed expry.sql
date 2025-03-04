
--creating a database
create database philmed_aging_report
--creating a table

create table philmed_expiries
 (
 Item_no varchar(10),
 Description varchar(70),	
 BRANCH varchar(30),
 QUANTITY_IN_PCS int,	
 UNIT_PRICE float,
 AMOUNT float,
 MONTH date,
);

select * from philmed_expiries1
DROP TABLE philmed_expiries

SELECT COUNT(*) from
[dbo].[philmed_expiries1]

--THE TOTAL QUANTITY OF EXPIRIES 

SELECT sum(QUANTITY_IN_PCS) AS TOTAL_QUANTITY_OF_EXPIRIES
from [dbo].[philmed_expiries1] 

--TOTAL QUNTITY OF EXPIRIES BY BRANCH
SELECT BRANCH,
sum(QUANTITY_IN_PCS) AS TOTAL_QUANTITY_OF_EXPIRIES

from [dbo].[philmed_expiries1] 
GROUP BY BRANCH

--TOTAL AMOUNT OF EXPIRIES
SELECT sum(AMOUNT) AS TOTAL_AMOUNT_IN_KES
from [dbo].[philmed_expiries1] 

--TOTAL AMOUNT EXPIRIES BY BRANCH

SELECT BRANCH,
sum(AMOUNT) AS TOTAL_AMOUNT

from [dbo].[philmed_expiries1] 
GROUP BY BRANCH

--DATA CLEANING
SELECT * FROM [dbo].[philmed_expiries1]
WHERE  Item_no is null
     or 
	 description is null
	 or 
	 QUANTITY_IN_PCS is null
	 or 
	 UNIT_PRICE is null
	 or 
	 AMOUNT is null
	 or 
	 MONTH is null

	 delete  from [dbo].[philmed_expiries1]
	 where
	  Item_no is null
     or 
	 description is null
	 or 
	 QUANTITY_IN_PCS is null
	 or 
	 UNIT_PRICE is null
	 or 
	 AMOUNT is null
	 or 
	 MONTH is null

	 select * from [dbo].[philmed_expiries1]

	 SELECT description,
	 sum(QUANTITY_IN_PCS) AS TOTAL_QUANTITY_OF_EXPIRIES
from [dbo].[philmed_expiries1] 
group by description
order by










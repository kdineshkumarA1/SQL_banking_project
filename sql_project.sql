/*1.average credit score by education level
2.percentage of customers with credict cards
3.average customer age by account type
4.customer distributon by estimated income
5.credict_score distribution
6.average number of linked accounts
7.average bank tensure by martial status
8.credit card owenership by gender
use data;
select * from customer_details;
select distinct Educationlevel,count(EducationLevel) as no_of_educationlevel
from customer_details
group by EducationLevel;
select count(EducationLevel),EducationLevel
from customer_details
group by EducationLevel;
select count(*)
from customer_details;
select distinct EducationLevel,avg(Credit_Score)
from customer_details
group by EducationLevel;
select Has_Credit_Card,count(Has_Credit_Card)*100.0/ (select count(*) from customer_details) as per_customers
from customer_details
where Has_Credit_Card='Yes' or Has_Credit_Card='No'
group by Has_Credit_Card;
select Account_Type,avg(Age)
from customer_details
group by Account_Type;
select Estimated_income,count(Estimated_Income) as customers
from customer_details
group by Estimated_Income
order by customers  desc;
SELECT
  CASE 
    WHEN Credit_Score < 600 THEN '<600'
    WHEN Credit_Score BETWEEN 600 AND 700 THEN '600-700'
    ELSE '>700'
  END AS Credit_Score_Range,
  COUNT(*) AS Num_Customers
FROM customer_details
GROUP BY Credit_Score_Range;
select avg(No_Of_Linked_Accounts)
from customer_details;
select Marital_Status,avg(No_Of_Months_On_Bank) as average_bank_tensure
from customer_details
group by Martial_Status;
select Gender,count(Has_Credit_Card)
from customer_details
where Has_Credit_Card='Yes'
group by Gender;

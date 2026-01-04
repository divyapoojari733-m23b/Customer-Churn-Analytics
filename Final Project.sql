create database bank_churn;
use bank_churn;
show tables;
select count(*) as total_customers from customer_churn_records;
select exited, count(*) as customer_count from customer_churn_records
group by exited;
select avg(CreditScore) as customer_credit_score 
from customer_churn_records;
select Geography, count(*) as customer_count from customer_churn_records
group by Geography;
select Gender, count(*) as customer_count from customer_churn_records
group by Gender;
select count(*) as zero_account_balance from customer_churn_records 
where balance=0;
select avg(Balance) as avg_balance_churned from customer_churn_records
where exited=1;
select Geography, count(case when exited=1 then 1 end) *100/count(*) 
as churn_rate from customer_churn_records 
group by Geography 
order by churn_rate desc;
select avg(Tenure) from customer_churn_records where exited=0;
select CustomerId, Surname, Estimatedsalary from customer_churn_records
where exited=1 order by Estimatedsalary desc limit 5;
select count(*) as active_multi_product_customer from customer_churn_records
where IsActiveMember = 1 
and NumOfProducts > 2;
select IsActiveMember, avg(Balance) as Avg_balance from	customer_churn_records
group by IsActiveMember;
select Gender, avg(EstimatedSalary) as Avg_Salary 
from customer_churn_records group by Gender;
 select Tenure, count(*) as churned_customers 
 from customer_churn_records where exited = 1
 group by Tenure order by Tenure;
select NumOfProducts, count(case when exited =1 then 1 end ) = 100/ 
count(*) as churn_rate from customer_churn_records group by NumOfProducts;
select case when age between 18 and 30 then '18-30'
when age between 31 and 45 then '31-45'
when age between 46 and 60 then '46-60'
else '60+' end as Age_Group,count(case when exited = 1 then 1 end)
from customer_churn_records group by Age_Group
order by Age_Group;
use bank_churn;
select Geography,Gender, count(case when exited = 1 then 1 end) * 100 / 
count(*) as Churn_rate
from customer_churn_records group by Geography,Gender 
order by Churn_rate desc;
select Geography, avg(creditscore) as Avg_Creditscore,
avg(balance) as Avg_Balance from customer_churn_records
where exited = 1 group by Geography;
select customerid,surname,age
from customer_churn_records where exited = 1 order by 
Balance desc limit 10;
select count(case when exited = 1 then 1 end) * 100 / count(*) 
as percentage_churned_nocard from customer_churn_records
where HasCrCard = 0;









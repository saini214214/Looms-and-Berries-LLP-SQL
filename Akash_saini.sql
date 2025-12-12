SELECT  FROM `sql-test-480109.sql_test.sql_test` LIMIT 1000
select * from `sql-test-480109.sql_test.sql_test`

--1
select *
from `sql-test-480109.sql_test.sql_test`
where invoice_date >= '2024-01-01'
and invoice_date < '2024-02-01';

--2
select *
from `sql-test-480109.sql_test.sql_test`
where customer_name = 'C1007-Moftah Khair Trading Est';

--3
select item_code, sum(quantity) as total_quantity
from `sql-test-480109.sql_test.sql_test`
group by item_code;

--4
select *
from `sql-test-480109.sql_test.sql_test`
where discount_amount > 0;

--5
select *
from `sql-test-480109.sql_test.sql_test`
where net_amount < 1000;

--6
select min(invoice_date) as earlist_invoice_date
from `sql-test-480109.sql_test.sql_test`;

--7
select *
from `sql-test-480109.sql_test.sql_test`
where payment_term = '1 Week';

--8
select customer_name, sum(net_amount)
from `sql-test-480109.sql_test.sql_test`
group by customer_name;

--9
select customer_name, sum(net_amount) as total_net_amount
from `sql-test-480109.sql_test.sql_test`
group by customer_name
order by total_net_amount desc
limit 5;

--10
select *
from `sql-test-480109.sql_test.sql_test`
where tax_amount is null
or tax_amount = 0 ;

--11
select format(invoice_date,'%Y-%m') as month,
  sum(discount_amount) as total_discount
from `sql-test-480109.sql_test.sql_test`
group by format(invoice_date,'%Y-%m')
order by month;

--12
select *
from `sql-test-480109.sql_test.sql_test`
where invoice_rate > 100;

--13
select invoice_date, sum(taxable_amount) as total_taxable_amount
from `sql-test-480109.sql_test.sql_test`
group by invoice_date;

--14
select item_code, avg(invoice_rate) as avg_invoice_rate
from `sql-test-480109.sql_test.sql_test`
group by item_code;

--15
select payment_term, count(*) as count_invoice
from `sql-test-480109.sql_test.sql_test`
group by payment_term;
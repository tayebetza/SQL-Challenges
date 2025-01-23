-- SQLite
--Total Values of Transactions by each bank.
SELECT 
    SPLIT_PART(transaction_code, '-', 1) AS Bank,
    SUM(value) AS "Total value"
FROM PD2023_WK01
GROUP BY Bank;

--Total Values by Bank, Day of the Week and Type of Transaction (Online or In-Person)
(select
split_part(transaction_code,'-',1) as "Transaction letter"
,IFF(online_or_in_person=1,'Online','In-Person') AS "Online or In-Person"
,to_date(transaction_date,'DD/MM/YYYY HH24:MI:SS') as NewDate
,date_part(quarter,NewDate ) as Quarters
,sum(value)
from PD2023_WK01
where "Transaction letter" = 'DSB'
group by  "Online or In-Person", "Transaction letter", NewDate, Quarters)
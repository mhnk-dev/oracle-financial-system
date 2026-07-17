select table_name
  from user_tables
 order by table_name;


select constraint_name,
       constraint_type,
       table_name
  from user_constraints
 order by table_name;

select c.first_name,
       c.last_name,
       a.account_no,
       a.balance
  from customers c
  join accounts a
on c.customer_id = a.customer_id;

select *
  from transactions;

select account_id,
       balance
  from accounts
 where account_id = 1;

SELECT 
    grantee,
    privilege
FROM dba_sys_privs
WHERE grantee = 'OFS_APP'
ORDER BY privilege;

--ALTER SYSTEM KILL SESSION 'SID,SERIAL#';

--DROP USER username CASCADE;

--ALTER USER SYS IDENTIFIED BY ;

--ALTER USER SYSTEM IDENTIFIED BY ;
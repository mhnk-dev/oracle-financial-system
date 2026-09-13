create materialized view mv_account_customer build immediate /*build deferred*/
   refresh complete /*refresh fast*/
   on demand /*on commit*/
as
   select accounts.customer_id,
          accounts.balance,
          customers.first_name,
          customers.last_name
     from accounts,
          customers
    where accounts.customer_id (+) = customers.customer_id;


EXEC DBMS_MVIEW.REFRESH('MV_ACCOUNT_CUSTOMER');
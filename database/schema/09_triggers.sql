create or replace trigger trg_customers_audit before
   insert or update on customers
   for each row
begin
   if inserting then
      if :new.customer_id is null then
         :new.customer_id := seq_customers.nextval;
      end if;
      :new.created_date := sysdate;
   end if;
   if updating then
      :new.updated_date := sysdate;
   end if;
end;
/

create or replace trigger trg_accounts_audit before
   insert or update on accounts
   for each row
begin
   if inserting then
      if :new.account_id is null then
         :new.account_id := seq_accounts.nextval;
      end if;
      :new.created_date := sysdate;
   end if;
   if updating then
      :new.updated_date := sysdate;
   end if;
end;
/

create or replace trigger trg_transactions_audit before
   insert or update on transactions
   for each row
begin
   if inserting then
      if :new.transaction_id is null then
         :new.transaction_id := seq_transactions.nextval;
      end if;
      :new.created_date := sysdate;
   end if;
   if updating then
      :new.updated_date := sysdate;
   end if;
end;
/
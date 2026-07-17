create or replace procedure pr_deposit (
   p_account_id in number,
   p_amount     in number,
   p_user_id    in number
) as
begin
   update accounts
      set balance = balance + p_amount,
          updated_by_id = p_user_id,
          updated_date = sysdate
    where account_id = p_account_id;


   if sql%rowcount = 0 then
      raise_application_error(
         -20002,
         'ACCOUNT NOT FOUND'
      );
   end if;
   insert into transactions (
      transaction_id,
      account_id,
      transaction_type,
      amount,
      created_by_id
   ) values
      ( seq_transactions.nextval,
        p_account_id,
        'DEPOSIT',
        p_amount,
        p_user_id );


   commit;
exception
   when others then
      rollback;
      raise;
end;
/

create or replace procedure pr_withdraw (
   p_account_id in number,
   p_amount     in number,
   p_user_id    in number
) as
   v_balance number;
begin
   select balance
     into v_balance
     from accounts
    where account_id = p_account_id;


   if v_balance < p_amount then
      raise_application_error(
         -20001,
         'INSUFFICIENT BALANCE'
      );
   end if;
   update accounts
      set balance = balance - p_amount,
          updated_by_id = p_user_id,
          updated_date = sysdate
    where account_id = p_account_id;


   insert into transactions (
      transaction_id,
      account_id,
      transaction_type,
      amount,
      created_by_id
   ) values
      ( seq_transactions.nextval,
        p_account_id,
        'WITHDRAW',
        p_amount,
        p_user_id );


   commit;
exception
   when no_data_found then
      rollback;
      raise_application_error(
         -20002,
         'ACCOUNT NOT FOUND'
      );
   when others then
      rollback;
      raise;
end;
/
insert into app_users (
   user_id,
   username,
   password_hash,
   user_role
) values
   ( seq_app_users.nextval,
     'ADMIN',
     'HASH_VALUE',
     'ADMIN' );


insert into app_users (
   user_id,
   username,
   password_hash,
   user_role,
   created_by_id
) values
   ( seq_app_users.nextval,
     'ALI',
     'HASH_VALUE',
     'CUSTOMER',
     1 );

insert into customers (
   customer_id,
   first_name,
   last_name,
   created_by_id
) values
   ( seq_customers.nextval,
     'ALI',
     'AHMADI',
     1 );


insert into customers (
   customer_id,
   first_name,
   last_name,
   created_by_id
) values
   ( seq_customers.nextval,
     'SARA',
     'MOHAMADI',
     1 );

insert into accounts (
   account_id,
   customer_id,
   account_no,
   balance,
   created_by_id
) values
   ( seq_accounts.nextval,
     1,
     '100001',
     5000,
     1 );


insert into accounts (
   account_id,
   customer_id,
   account_no,
   balance,
   created_by_id
) values
   ( seq_accounts.nextval,
     2,
     '100002',
     3000,
     1 );

insert into transactions (
   transaction_id,
   account_id,
   transaction_type,
   amount,
   created_by_id
) values
   ( seq_transactions.nextval,
     1,
     'DEPOSIT',
     5000,
     1 );
begin
   pr_deposit(
      1,
      1000,
      2
   );
end;
/

commit;
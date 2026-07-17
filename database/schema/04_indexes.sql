create index idx_accounts_customer_id on
   accounts (
      customer_id
   );

create index idx_transactions_account_id on
   transactions (
      account_id
   );
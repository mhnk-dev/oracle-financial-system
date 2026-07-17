alter table accounts
   add constraint fk_accounts_customers foreign key ( customer_id )
      references customers ( customer_id );

alter table transactions
   add constraint fk_transactions_accounts foreign key ( account_id )
      references accounts ( account_id );

alter table customers
   add constraint fk_customers_created_by foreign key ( created_by_id )
      references app_users ( user_id );


alter table customers
   add constraint fk_customers_updated_by foreign key ( updated_by_id )
      references app_users ( user_id );

alter table accounts
   add constraint fk_accounts_created_by foreign key ( created_by_id )
      references app_users ( user_id );


alter table accounts
   add constraint fk_accounts_updated_by foreign key ( updated_by_id )
      references app_users ( user_id );

alter table transactions
   add constraint fk_transactions_created_by foreign key ( created_by_id )
      references app_users ( user_id );


alter table transactions
   add constraint fk_transactions_updated_by foreign key ( updated_by_id )
      references app_users ( user_id );
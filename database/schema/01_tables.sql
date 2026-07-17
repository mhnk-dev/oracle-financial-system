create table app_users (
   user_id       number,
   username      varchar2(50) not null,
   password_hash varchar2(200) not null,
   user_role     varchar2(30) not null,
   created_by_id number,
   created_date  date default sysdate not null,
   updated_by_id number,
   updated_date  date,
   constraint pk_app_users primary key ( user_id ),
   constraint uk_app_users_username unique ( username )
);


create table customers (
   customer_id   number,
   first_name    varchar2(50) not null,
   last_name     varchar2(50) not null,
   created_by_id number default 1 not null,
   created_date  date default sysdate not null,
   updated_by_id number,
   updated_date  date,
   constraint pk_customers primary key ( customer_id )
);


create table accounts (
   account_id    number,
   customer_id   number not null,
   account_no    varchar2(20) not null,
   balance       number(15,2) default 0 not null,
   created_by_id number default 1 not null,
   created_date  date default sysdate not null,
   updated_by_id number,
   updated_date  date,
   constraint pk_accounts primary key ( account_id )
);


create table transactions (
   transaction_id   number,
   account_id       number not null,
   transaction_type varchar2(10) not null,
   amount           number(15,2) not null,
   transaction_date date default sysdate not null,
   created_by_id    number default 1 not null,
   created_date     date default sysdate not null,
   updated_by_id    number,
   updated_date     date,
   constraint pk_transactions primary key ( transaction_id )
);
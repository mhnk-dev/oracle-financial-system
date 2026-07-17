grant create session to ofs_app;
grant create table to ofs_app;
grant create sequence to ofs_app;
grant create view to ofs_app;
grant create procedure to ofs_app;
grant create trigger to ofs_app;

alter user ofs_app
   quota unlimited on users;
grant create session to ofs_app;
grant create table to ofs_app;
grant create sequence to ofs_app;
grant create view to ofs_app;
grant create procedure to ofs_app;
grant create trigger to ofs_app;
grant create materialized view to ofs_app;

grant debug connect session to ofs_app;
grant debug any procedure to ofs_app;

alter user ofs_app
   quota unlimited on users;

grant select on v_$session to ofs_app;
grant select on v_$sesstat to ofs_app;
grant select on v_$statname to ofs_app;
grant select on v_$open_cursor to ofs_app;
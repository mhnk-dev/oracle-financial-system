create or replace package pkg_session as
   procedure set_user (
      p_user_id number
   );


   function get_user_id return number;

end pkg_session;
/

create or replace package body pkg_session as

   procedure set_user (
      p_user_id number
   ) as
   begin
      dbms_session.set_context(
         'APP_CONTEXT',
         'USER_ID',
         p_user_id
      );
   end set_user;


   function get_user_id return number as
   begin
      return sys_context(
         'APP_CONTEXT',
         'USER_ID'
      );
   end get_user_id;


end pkg_session;
/
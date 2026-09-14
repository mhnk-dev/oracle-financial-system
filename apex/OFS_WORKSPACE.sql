prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_default_workspace_id=>6401353413051332
);
end;
/
prompt  WORKSPACE 6401353413051332
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   14:01 Monday September 14, 2026
--   Exported By:     ADMIN
--   Export Type:     Workspace Export
--   Version:         26.1.0
--   Instance ID:     2400163420118894
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_260100
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>6401353413051332);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace OFS_WORKSPACE...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 6401449935051354
 ,p_provisioning_company_id => 6401353413051332
 ,p_short_name => 'OFS_WORKSPACE'
 ,p_display_name => 'OFS_WORKSPACE'
 ,p_first_schema_provisioned => 'OFS_APP'
 ,p_company_schemas => 'OFS_APP'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_data_reporter_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'OFS_WORK'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'OFS_WORKSPACE'
 ,p_files_version => 2461238153548
 ,p_is_extension_yn => 'N'
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 6240171091163368,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 6240055233163368,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 6239942122163365,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '6401222880051332',
  p_user_name                    => 'OFS_WORKSPACE_ADMIN',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'myemail@mydomain.com',
  p_web_password                 => '8471264AF30CF8CC34FEEBC96CC881D883458013D2E6333E6946DB42CCCE9D652619B06F7F8527A19268B5E853D345E0D4B2D0F6845FC67DE4421BC2140660B8',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL:DR_ADMIN',
  p_default_schema               => 'OFS_APP',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202609010949','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_data_reporter_yn       => 'Y',
  p_allow_access_to_schemas      => 'OFS_APP');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '6600554799119047',
  p_user_name                    => 'OFS_WORKSPACE_DEVELOPER1',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'myemail@mydomain.com',
  p_web_password                 => '037008ECF130D2F04642989A48C271D3A992F219630FC0D710A865BD4CEF0D063D02D84EC729A5E6D4B015A8FAD4F7ADAA38FB674F5C948AC8AA2B48400FB6DA',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'CREATE:EDIT:HELP:MONITOR:SQL:DATA_LOADER:DR_ADMIN',
  p_default_schema               => 'OFS_APP',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202609010949','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_data_reporter_yn       => 'Y',
  p_allow_access_to_schemas      => 'OFS_APP');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 14001240031020834,
    p_user_id => 6401222880051332,
    p_password => '8471264AF30CF8CC34FEEBC96CC881D883458013D2E6333E6946DB42CCCE9D652619B06F7F8527A19268B5E853D345E0D4B2D0F6845FC67DE4421BC2140660B8');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 14001441542023847,
    p_user_id => 6600554799119047,
    p_password => '037008ECF130D2F04642989A48C271D3A992F219630FC0D710A865BD4CEF0D063D02D84EC729A5E6D4B015A8FAD4F7ADAA38FB674F5C948AC8AA2B48400FB6DA');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 6600630853119054,
    p_user_id => 6600554799119047,
    p_password => '037008ECF130D2F04642989A48C271D3A992F219630FC0D710A865BD4CEF0D063D02D84EC729A5E6D4B015A8FAD4F7ADAA38FB674F5C948AC8AA2B48400FB6DA');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 6401684563051381,
    p_user_id => 6401222880051332,
    p_password => '8471264AF30CF8CC34FEEBC96CC881D883458013D2E6333E6946DB42CCCE9D652619B06F7F8527A19268B5E853D345E0D4B2D0F6845FC67DE4421BC2140660B8');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8407762436221174,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_100_P2_W6600898302271808',
    p_attribute_value => '8407351930221148____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9231020394990320,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'FSP_IR_100_P2_W6600898302271808',
    p_attribute_value => '8407351930221148____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9231174122990320,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'FSP100_P2_R6604835763271848_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12247715713530828,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX_IG_9207073156250634_CURRENT_REPORT',
    p_attribute_value => '12240024216530784:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12259545052622285,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'F4000_203904827661009901_SPLITTER_STATE',
    p_attribute_value => '358:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14002179861201298,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'EXPORT_TYPE',
    p_attribute_value => 'SQL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14002278036201299,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'EXPORT_MODE',
    p_attribute_value => 'DEV',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14006830359289596,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4850_P110_W345304742814156446',
    p_attribute_value => '349792885320463043____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14013505934527989,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP4000_P1946_R226685443264475216_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14017160249549990,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'PD_SAMPLE_DATA_MODE',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14613842835632057,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX$RDS_4000_9801_1957406633376301_active_tab',
    p_attribute_value => 'SHOW_ALL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15425162108015369,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P19_W451745617575288584',
    p_attribute_value => '451746507039288843____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15425814851018305,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P939_W451352700445603348',
    p_attribute_value => '451353909559603360____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15426081882024727,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P431_W478896025956673213',
    p_attribute_value => '478896612991674411____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15427098177028695,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P959_W483659607062898467',
    p_attribute_value => '483660631524898748____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15805035162146049,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'FSP_IR_4000_P19_W451745617575288584',
    p_attribute_value => '451746507039288843____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15805863210147159,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'FSP_IR_4000_P939_W451352700445603348',
    p_attribute_value => '451353909559603360____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8002107673086919,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'FSP_IR_4350_P7_W9412205627285339',
    p_attribute_value => '9413006316285546____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7200203905235110,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX$SHOW_ENABLE_AI_ALERT',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8001837146083708,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'FSP_IR_4350_P8_W9830202023330851',
    p_attribute_value => '9831113910331200____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8002202399087558,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'FSP4350_P33_R47031617128214415_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8002660149090250,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4350_P8_W9830202023330851',
    p_attribute_value => '9831113910331200____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8003328477101683,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX$CREATE_PAGE_WIZARD.CATEGORY',
    p_attribute_value => 'PAGE',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8417274537881176,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'PD_PE_CODE_EDITOR_DLG_W',
    p_attribute_value => '1016',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9200925334050869,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX_PDF_ACCESSIBLE',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9211842867251096,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP100_P2_R6604835763271848_SORT',
    p_attribute_value => 'sort_4_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9228834262847626,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P405_W3852329031687921',
    p_attribute_value => '3853503855690337____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9229313992847903,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P4050_W29606701090180824',
    p_attribute_value => '1839984519963049____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9229423576848935,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'CODE_LANGUAGE',
    p_attribute_value => 'PLSQL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9230171516908673,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'PERSISTENT_ITEM_P34_ROWS',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9230250321908691,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP4000_P34_R77549119545304597_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12289672691642431,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'FSP_IR_4000_P546_W30205316146531602',
    p_attribute_value => '30206031208532453____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12289715994647584,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'CODE_LANGUAGE',
    p_attribute_value => 'PLSQL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12290970815670968,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'FSP_IR_4000_P405_W3852329031687921',
    p_attribute_value => '3853503855690337____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12291425754671159,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'FSP_IR_4000_P4050_W29606701090180824',
    p_attribute_value => '1839984519963049____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12297639240893372,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'PD_ENABLE_TOOLTIPS',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12298431443913459,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'PD_TAB_LAYOUT_2',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12298513769919669,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'PD_GLV_HIDE_EMPTY',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12298788516932181,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P1235_W480642409196787876',
    p_attribute_value => '480643318916789165____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12298971466932548,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P201_W169482721810656581',
    p_attribute_value => '169484418827659303____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14007098405294693,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4850_P120_W349780070697459222',
    p_attribute_value => '349830769421520089____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14007362642306817,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4850_P130_W708529861800941074',
    p_attribute_value => '708580560525001941____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14007444509311532,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX_IG_359175352067742002_CURRENT_REPORT',
    p_attribute_value => '359189423622765512:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14022324900550874,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP100_P6_R14018709839550202_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14030289452796033,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P9500_W6235802409406749',
    p_attribute_value => '6252917602407791____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15845382051209407,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX_IG_14610624767527630_CURRENT_REPORT',
    p_attribute_value => '15894558676310493:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15947273280324941,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX_IG_15858446544301339_CURRENT_REPORT',
    p_attribute_value => '15941351445324898:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15968116778335063,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX_IG_15947816097328206_CURRENT_REPORT',
    p_attribute_value => '15960433917335019:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8415132706557387,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'F4000_203906404237009921_SPLITTER_STATE',
    p_attribute_value => '587:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12226165735416277,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX_IG_12204061793415151_CURRENT_REPORT',
    p_attribute_value => '12204897686415263:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12226255919416277,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX_IG_12214212689415410_CURRENT_REPORT',
    p_attribute_value => '12215010261415412:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12275183726786722,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_100_P17_W12266286228783901',
    p_attribute_value => '12274718943786711____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12801465264013986,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12803338070204657,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P9800_W3401447582525813',
    p_attribute_value => '3407798782570138____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14030425790796784,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P7020_W2533511338513173',
    p_attribute_value => '2550626531514215____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14030588509796799,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP4000_P7020_R29895294190987845_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14603708272101544,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P3500_W3162253205903352',
    p_attribute_value => '3175569735952262____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15836972284205596,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX_IG_14609741696527621_CURRENT_REPORT',
    p_attribute_value => '15893987919310492:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15959773742329436,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX_IG_15859252888301347_CURRENT_REPORT',
    p_attribute_value => '15952949142329394:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6602235711144166,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'APEX$SHOW_ENABLE_AI_ALERT',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6822198140167440,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6822311255167497,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6822409483167541,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '100',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6822642782167909,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9601291024035925,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'APEX_PDF_ACCESSIBLE',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12290032425653762,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '1',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12298145981912763,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'PD_ENABLE_TEXT_MESSAGES_PICKER',
    p_attribute_value => 'Y',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12298266379913446,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'PD_TWO_COLUMN_MODE',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12298376960913455,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'PD_TAB_LAYOUT_3',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14004878389216425,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P1620_W312277037396040233',
    p_attribute_value => '312279461465115193____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14004920030220248,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX_IG_3704448106487747_CURRENT_REPORT',
    p_attribute_value => '1526079847620972:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14005366075242940,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P1901_W3290607658489431',
    p_attribute_value => '3451665554620404____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14023018893627721,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P1600_W157709960601474178',
    p_attribute_value => '157712384670549138____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14026048617744092,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP4000_P1921_R310374200946241813_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14029418393785805,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4850_P190_W4402214405520520',
    p_attribute_value => '1606130693443833____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14029761255787161,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4850_P150_W1131851802868154106',
    p_attribute_value => '1136339945374460703____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14604136376336238,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX_IG_4199465633515446_CURRENT_REPORT',
    p_attribute_value => '4758017862595203:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15829490665199013,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX_IG_14608994295527613_CURRENT_REPORT',
    p_attribute_value => '15893381382310492:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6822977865173331,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'FSP_IR_4350_P55_W10236304983033455',
    p_attribute_value => '10238325656034902____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7000356213193082,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4350_P29_W9294827650405715',
    p_attribute_value => '9296821143409975____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7000589522193728,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7000817961195795,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7001087899195820,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7001149587195844,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '100',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8601656909669247,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'EXPORT_TYPE',
    p_attribute_value => 'SQL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8601759615669247,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'EXPORT_MODE',
    p_attribute_value => 'MIG',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9230456216959026,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P546_W30205316146531602',
    p_attribute_value => '30206031208532453____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12004025551787477,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'APEX_IG_2500606111718504_CURRENT_REPORT',
    p_attribute_value => '5306711573062761:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12239325779521072,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX_IG_9206127132250625_CURRENT_REPORT',
    p_attribute_value => '12232575523520984:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12264755356664813,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '2',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12264876699703706,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'F4000_1157687726908338238_SPLITTER_STATE',
    p_attribute_value => '290:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12297164449878520,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'PD_GLV_HIDE_LEGACY',
    p_attribute_value => 'Y',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14009327464337154,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P1955_W809376252104725874',
    p_attribute_value => '809537310000856847____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14009582746337267,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_4000_P1903_W492434661470706644',
    p_attribute_value => '492595719366837617____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14012243001393814,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'WIZARD_REST_SOURCE_TYPE',
    p_attribute_value => 'NATIVE_HTTP',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14013716802534826,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP4000_P1946_R229851931201472455_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14028915358761253,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP100_P13_R14027504999760639_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15803505025012264,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'APEX$RDS_4000_1621_1484330738529420_active_tab',
    p_attribute_value => 'SHOW_ALL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15822976858189414,
    p_user_id => 'OFS_WORKSPACE_ADMIN',
    p_preference_name => 'F4000_203906404237009921_SPLITTER_STATE',
    p_attribute_value => '358:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15890993604302432,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_100_P20_W14611775037527641',
    p_attribute_value => '15889577210302421____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15891042678302432,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_100_P20_W14612490320527648',
    p_attribute_value => '15889968069302428____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 15891153607302432,
    p_user_id => 'OFS_WORKSPACE_DEVELOPER1',
    p_preference_name => 'FSP_IR_100_P20_W15855131801301306',
    p_attribute_value => '15890486422302430____',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
----------------
--sql commands
--
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608241831','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608241931','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608241933','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608241937','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608251213','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608251221','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608251221','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608251222','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608261101','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608261101','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608261203','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608281212','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608281213','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609010949','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 3,
    p_custom_status_text => 'Password Expired');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609010949','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_DEV',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609011520','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_DEV',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609011520','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609011523','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609011952','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609011955','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608211223','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608241330','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608241510','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608241835','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608241836','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608241849','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608241850','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608241856','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608241857','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609010949','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 3,
    p_custom_status_text => 'Password Expired');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609010949','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ADMIN',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608241246','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608261459','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609010950','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609010950','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609010950','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608241331','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608241848','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608241906','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608241943','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608251157','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608251205','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608251220','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608261502','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608261516','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609011910','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609011934','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608241326','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608241510','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608241838','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608251155','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608260905','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202608260906','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202608261456','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609010947','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 3,
    p_custom_status_text => 'Password Expired');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609010947','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 3,
    p_custom_status_text => 'Password Expired');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202609011953','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202609091646','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609132053','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609091645','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609092053','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202609092053','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609092056','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202609141259','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202609131547','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202609131648','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609132112','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609141246','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_ADMIN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609141258','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202609091810','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609101352','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202609101352','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609101353','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202609101353','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609101359','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'OFS_APP',
    p_access_date => to_date('202609101400','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609131546','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'OFS_WORKSPACE_DEVELOPER1',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202609141238','YYYYMMDDHH24MI'),
    p_ip_address => '172.18.0.1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ... Extension Links
 
 
prompt ... Extension Grants
 
 
prompt ...workspace objects
 
begin
wwv_imp_workspace.create_credential(
 p_id=>15005800310189807
,p_name=>'Credentials for gemini_ai_service'
,p_static_id=>'credentials-for-gemini-ai-service'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://generativelanguage.googleapis.com/v1beta',
''))
,p_prompt_on_install=>true
);
end;
/
begin
wwv_imp_workspace.create_credential(
 p_id=>14023312777665115
,p_name=>'httpbin-testpass-cred'
,p_static_id=>'httpbin-testpass'
,p_authentication_type=>'BASIC'
,p_prompt_on_install=>true
);
end;
/
begin
wwv_imp_workspace.create_remote_server(
 p_id=>15006250274189811
,p_name=>'Gemini_AI_Service'
,p_static_id=>'gemini-ai-service'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('gemini-ai-service'),'https://generativelanguage.googleapis.com/v1beta')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('gemini-ai-service'),'')
,p_server_type=>'GENERATIVE_AI'
,p_credential_id=>15005800310189807
,p_ai_provider_type=>'GEMINI'
,p_ai_is_builder_service=>false
,p_ai_is_default_for_new_apps=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('gemini-ai-service'),'gemini-3.6-flash')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('gemini-ai-service'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('gemini-ai-service'),'')
,p_ai_max_tokens=>nvl(wwv_flow_application_install.get_remote_server_ai_maxtokens('gemini-ai-service'),'')
,p_prompt_on_install=>false
);
end;
/
begin
wwv_imp_workspace.create_remote_server(
 p_id=>14024405591743442
,p_name=>'httpbin-org-basic-auth-testuser'
,p_static_id=>'httpbin-org-basic-auth-testuser'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('httpbin-org-basic-auth-testuser'),'https://httpbin.org/basic-auth/testuser/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('httpbin-org-basic-auth-testuser'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('httpbin-org-basic-auth-testuser'),'')
,p_prompt_on_install=>false
);
end;
/
begin
wwv_imp_workspace.create_remote_server(
 p_id=>14618009279922101
,p_name=>'Ollama_AI_Service'
,p_static_id=>'ollama-ai-service'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('ollama-ai-service'),'http://host.docker.internal:11434')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('ollama-ai-service'),'')
,p_server_type=>'GENERATIVE_AI'
,p_ai_provider_type=>'OLLAMA'
,p_ai_is_builder_service=>false
,p_ai_is_default_for_new_apps=>true
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('ollama-ai-service'),'llama3.2')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('ollama-ai-service'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('ollama-ai-service'),'')
,p_ai_max_tokens=>nvl(wwv_flow_application_install.get_remote_server_ai_maxtokens('ollama-ai-service'),'')
,p_prompt_on_install=>false
);
end;
/
begin
wwv_imp_workspace.create_remote_server(
 p_id=>14013851922536736
,p_name=>'ords-ords-ofs_workspace'
,p_static_id=>'ords-ords-ofs-workspace'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('ords-ords-ofs-workspace'),'http://ords:8080/ords/ofs_workspace/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('ords-ords-ofs-workspace'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('ords-ords-ofs-workspace'),'')
,p_prompt_on_install=>false
);
end;
/
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'OFS_APP';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA OFS_APP - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_260100
-- Exported 14:01 Monday September 14, 2026 by: ADMIN
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 14:01 Monday September 14, 2026 by: ADMIN
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'OFS_WORKSPACE';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done

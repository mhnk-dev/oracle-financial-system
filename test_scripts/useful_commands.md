# Useful Commands

## Start Oracle Database Container

Start the Oracle Database container:

docker compose up -d oracle-db

---

## Check Oracle Database Container Status

Check running containers:

docker ps

View Oracle Database logs:

docker logs oracle-free-db

Restart the Oracle Database container:

docker restart oracle-free-db

Check Oracle Listener status:

docker exec oracle-free-db bash -c "lsnrctl status"

---

## Database Connection Configuration

Use the following connection settings:

Connection Name:

ofs_app

Username:

ofs_app

Password:

change_me

Hostname:

localhost

Port:

1521

Connection Type:

Basic

Role:

Default

Service Name:

FREEPDB1

---

## Open SQL*Plus as SYSDBA

Access the Oracle Database container:

docker exec -it oracle-free-db bash

Connect to SQL*Plus as SYSDBA:

sqlplus / as sysdba

---

## Clean Docker Environment

⚠️ Warning:
The following commands will remove all Docker containers, images, and volumes.
All database data stored in Docker volumes will be deleted.


docker stop $(docker ps -aq)
docker rm -f $(docker ps -aq)
docker rmi -f $(docker images -aq)
docker volume rm $(docker volume ls -q)
docker system prune -a --volumes

---

## Enable ORDS Schema Access For Web SQL Developer

Connect to the Oracle Database as SYSDBA:

sqlplus sys/@FREEPDB1 as sysdba

Grant required privileges for ORDS:

GRANT INHERIT PRIVILEGES ON USER SYSTEM TO ORDS_METADATA;

Enable the schema for ORDS:

BEGIN
  ORDS.ENABLE_SCHEMA(
    p_enabled             => TRUE,
    p_schema              => 'OFS_APP',
    p_url_mapping_type    => 'BASE_PATH',
    p_url_mapping_pattern => 'ofs_app',
    p_auto_rest_auth      => FALSE
  );

  COMMIT;
END;
/

Verify ORDS schema configuration:

SELECT *
FROM ords_metadata.ords_schemas;

Restart ORDS to apply changes:

docker compose restart ords

---

# Oracle Database Full Backup (Data Pump)

## 1. Enter Oracle Database Container

```bash
docker exec -it oracle-financial-db bash
```

---

## 2. Create Full Database Export

Run Data Pump export:

```bash
expdp system/password@FREEPDB1 \
directory=DATA_PUMP_DIR \
full=y \
dumpfile=full_backup.dmp \
logfile=full_backup.log
```

---

## 3. Check Backup Files

List generated backup files:

```bash
ls /opt/oracle/admin/FREE/dpdump/
```

Example:

```text
53103393CA0F0FE9E0636402000A5830
```

Check files:

```bash
ls /opt/oracle/admin/FREE/dpdump/53103393CA0F0FE9E0636402000A5830
```

Expected result:

```text
full_backup.dmp
full_backup.log
```

---

## 4. Check Export Errors

Review Data Pump log:

```bash
grep ORA /opt/oracle/admin/FREE/dpdump/53103393CA0F0FE9E0636402000A5830/full_backup.log
```

If there are no critical errors, the backup can be used for restore.

---

## 5. Copy Backup Files to Host Machine

Exit the container:

```bash
exit
```

Copy dump file:

```powershell
docker cp oracle-financial-db:/opt/oracle/admin/FREE/dpdump/53103393CA0F0FE9E0636402000A5830/full_backup.dmp E:\yourbackupfolder\
```

Copy log file:

```powershell
docker cp oracle-financial-db:/opt/oracle/admin/FREE/dpdump/53103393CA0F0FE9E0636402000A5830/full_backup.log E:\yourbackupfolder\
```

---

# Restore Full Database Backup

On the target Oracle database:

Run:

```bash
impdp system/password@FREEPDB1 \
directory=DATA_PUMP_DIR \
full=y \
dumpfile=full_backup.dmp \
logfile=restore_backup.log
```

# SQL Plus

```bash
docker exec -it oracle-financial-db sqlplus ofs_app/ofs_app123@localhost:1521/FREEPDB1
```

# Execution Plan

```bash
SET TIMING ON;
```

```bash
EXPLAIN PLAN FOR
SELECT
    accounts.balance,
    customers.first_name,
    customers.last_name
FROM
    accounts,
    customers
WHERE
    accounts.customer_id = customers.customer_id
```

```bash
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);
```


# Giving Oracle Hint

```bash
SELECT /*+ USE_NL(a c) */
    a.balance,
    c.first_name,
    c.last_name
FROM accounts a
JOIN customers c
    ON a.customer_id = c.customer_id;
```

```bash
SELECT /*+ FULL(a) */
       a.account_id,
       a.account_name,
       a.balance
FROM accounts a;
```

# Giving REST Access

```bash
BEGIN
    DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
        host       => 'ords',
        lower_port => your port,
        upper_port => your port,
        ace        => XS$ACE_TYPE(
            privilege_list => XS$NAME_LIST('connect'),
            principal_name => APEX_APPLICATION.G_FLOW_SCHEMA_OWNER,
            principal_type => XS_ACL.PTYPE_DB
        )
    );
END;
```

```bash
BEGIN
    DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
        host => 'your local ip',
        ace  => XS$ACE_TYPE(
            privilege_list => XS$NAME_LIST('jdwp'),
            principal_name => 'OFS_APP',
            principal_type => XS_ACL.PTYPE_DB
        )
    );
END;
```

```bash
BEGIN
    DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
        host => 'your site address',
        ace  => XS$ACE_TYPE(
            privilege_list => XS$NAME_LIST('connect', 'resolve'),
            principal_name => 'APEX_260100',
            principal_type => XS_ACL.PTYPE_DB
        )
    );
END;
```

```bash
BEGIN
    DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
        host => 'host.docker.internal',
        ace  => XS$ACE_TYPE(
            privilege_list => XS$NAME_LIST('resolve'),
            principal_name => 'APEX_260100',
            principal_type => XS_ACL.PTYPE_DB
        )
    );
END;

BEGIN
    DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
        host       => 'host.docker.internal',
        lower_port => your port,
        upper_port => your port,
        ace        => XS$ACE_TYPE(
            privilege_list => XS$NAME_LIST('connect'),
            principal_name => 'APEX_260100',
            principal_type => XS_ACL.PTYPE_DB
        )
    );
END;
```


```bash
BEGIN
    DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
        host => 'generativelanguage.googleapis.com',
        ace  => XS$ACE_TYPE(
            privilege_list => XS$NAME_LIST('resolve'),
            principal_name => 'APEX_260100',
            principal_type => XS_ACL.PTYPE_DB
        )
    );
END;

BEGIN
    DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
        host       => 'generativelanguage.googleapis.com',
        lower_port => your port,
        upper_port => your port,
        ace        => XS$ACE_TYPE(
            privilege_list => XS$NAME_LIST('connect'),
            principal_name => 'APEX_260100',
            principal_type => XS_ACL.PTYPE_DB
        )
    );
END;
```

```bash
BEGIN
    DBMS_DEBUG_JDWP.CONNECT_TCP('host.docker.internal', 'your port');
end;
```
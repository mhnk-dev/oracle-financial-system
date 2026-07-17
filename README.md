# Oracle Financial System

A financial system database project built with Oracle Database, PL/SQL, and Oracle APEX.

## Prerequisites

Before running the project, make sure you have installed:

- Docker
- Docker Compose
- Oracle SQL Developer (optional)

---

## Project Structure

```
oracle-financial-system
│
├── docker-compose.yml
├── .env.example
├── database
│   │
│   ├── setup

```

---

# Oracle Database Setup

## 1. Configure Environment Variables

Create a `.env` file based on `.env.example`:

```env
ORACLE_PASSWORD=change_me
ORACLE_PORT=1521

APP_USER=OFS_APP
APP_USER_PASSWORD=change_me
```

---

## 2. Start Oracle Database

Run:

```bash
docker compose up -d oracle-db
```

Check container status:

```bash
docker compose ps
```

Oracle Database should be running before continuing.

---

## 3. Connect as SYSTEM User

Connect to Oracle using:

```
Username: SYSTEM
Password: <ORACLE_PASSWORD>
Host: localhost
Port: <ORACLE_PORT>
Service Name: FREEPDB1
```

---

## 4. Initialize Database Security

After connecting as `SYSTEM`, execute:

```
database/setup/build_all_setup.sql

```

These scripts must be executed using the `SYSTEM` user.

They are responsible for:

- Creating the application schema
- Assigning required privileges
- Configuring database-level settings

---

## 5. Connect Using Application Schema

After completing the setup, connect using:

```
Username: OFS_APP
Password: <APP_USER_PASSWORD>
Host: localhost
Port: <ORACLE_PORT>
Service Name: FREEPDB1
```

---

# Database Deployment

After connecting as `OFS_APP`, execute:

```
database/schema/build_all_schema.sql

---

# Docker Configuration

The Oracle database uses a persistent Docker volume:

```
oracle-financial-data
```

Database files are stored inside the container at:

```
/opt/oracle/oradata
```

Removing the container will not remove database data unless the Docker volume is deleted.

---

# Development Notes

This project uses:

- Oracle Database Free
- PL/SQL
- Docker Compose
- Oracle SQL Developer
- Oracle APEX.

The database architecture follows a separated setup:

- Database infrastructure managed by Docker
- Security and user management handled by SYSTEM
- Application objects owned by OFS_APP schema

```

Oracle Database installation is completed.

*****************************************************************

# Oracle APEX Installation

## 1. Verify Database PDB Status

Connect to the Oracle Database using the SYSTEM user and run:

SELECT name, open_mode FROM v$pdbs;

Expected result:

NAME : FREEPDB1       
OPEN_MODE : READ WRITE

The PDB must be in READ WRITE mode before starting the APEX installation.

---

## 2. Check if APEX Is Not Pre-Installed

Connect to the Oracle Database using the `SYSTEM` user and run:

SELECT comp_id, comp_name, version, status
FROM dba_registry
WHERE comp_id = 'APEX';

Expected result:

no rows selected

---

## 3. Download Oracle APEX

Download the latest Oracle APEX version from:

https://www.oracle.com/tools/downloads/apex-downloads/

Extract the downloaded archive and place the extracted files under:

installers/apex-latest

---

## 4. Start Oracle Database Container

Stop the existing containers:

docker compose down

Start the Oracle Database container:

docker compose up -d oracle-db

---

## 5. Enter Oracle Database Container

Access the Oracle Database container:

docker exec -it oracle-financial-db bash

---

## 6. Verify APEX Installation Files

Check that the APEX installation files are available inside the container:

ls /opt/apex

If the files exist, navigate to the APEX directory:

cd /opt/apex

Verify that the APEX installation script exists:

ls apexins.sql

---

## 7. Install Oracle APEX

Connect to the database as the `SYS` user:

sqlplus sys/${ORACLE_PASSWORD}@FREEPDB1 as sysdba

Verify the current container:

show con_name;

Expected result:

FREEPDB1

Run the APEX installation script:

@apexins.sql SYSAUX SYSAUX TEMP /i/

After a successful installation, the following message should be displayed:

Thank you for installing Oracle APEX xx.x.x

---

## 8. Verify Oracle APEX Installation

To verify that APEX was installed successfully, run:

SELECT comp_name, version, status
FROM dba_registry
WHERE comp_id = 'APEX';

Expected result:

Oracle APEX | xx.x.x | VALID

---

## 9. Set APEX Administrator Password

Run the following script to create or update the APEX administrator account:

@apxchpwd.sql

Enter the requested values:

Note:
The administrator username must not already exist as a database user.

Example:

Enter the administrator's username [ADMIN]: ADMIN

Enter ADMIN's email [ADMIN]:
youremail@yourdomain.com

Enter ADMIN's password:
yourpassword

If the operation is successful, the following message will be displayed:

Created instance administrator....

---

## 10. Configure APEX REST Services

Run the APEX REST configuration script:

@apex_rest_config.sql

Enter the requested values:

Example:

Enter a password for the APEX_LISTENER user:
yourpassword

Enter a password for the APEX_REST_PUBLIC_USER user:
yourpassword

Oracle APEX installation is completed.

*****************************************************************

# Oracle REST Data Services (ORDS) Installation

## 1. Start ORDS Container

Start the ORDS container:

docker compose up -d ords

Check running containers:

docker ps

Monitor ORDS logs:

docker logs -f oracle-financial-ords

Check the logs for any errors.

If an error occurs, resolve the issue first, then recreate the ORDS configuration volume if required.

Stop the containers:

docker compose down

List Docker volumes:

docker volume ls

Find the ORDS configuration volume and remove it:

docker volume rm oracle-financial-system_ords-config

Start ORDS again:

docker compose up -d ords

Monitor ORDS logs:

docker logs -f oracle-financial-ords

---

## 2. Successful Installation

A successful ORDS startup should display messages similar to:

Oracle REST Data Services version : 26.2.1.r1901402

Oracle REST Data Services server info: jetty/12.0.34
.
.
.

The log command continues running and waits for new log entries.

To exit log monitoring without stopping ORDS, press:

Ctrl + C

---

## 3. Verify ORDS and APEX Access

Check that all containers are running:

docker ps

Open one of the following URLs in your browser:

http://localhost:8080

or

http://localhost:8080/ords/

or

http://localhost:8080/ords/apex

Verify that the ORDS/APEX page loads successfully and that you can access the login page.

---

## 4. Configure ORDS Static Files

Apply the final ORDS configuration:

docker compose up -d --force-recreate ords

Access the ORDS container:

docker exec -it oracle-financial-ords bash

Set the APEX static files path:

ords --config /etc/ords/config config set standalone.static.path /opt/ords/images

Exit the container:

exit

Restart ORDS:

docker compose restart ords

Verify that APEX static files are accessible:

http://localhost:8080/i/16admin.gif

If the image loads successfully, the ORDS configuration is complete.

Oracle REST Data Services (ORDS) installation is completed.

*****************************************************************

# Installation Completed

The Oracle environment setup is complete. Enjoy!
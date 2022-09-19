

CREATE ROLE "ro" NOINHERIT;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO "ro";

ALTER USER postgres PASSWORD 'bPRTUXwoCdgNffsrOAcq';

CREATE USER vault_dba WITH SUPERUSER PASSWORD 'ajAhjjtykQUdanL0A8rv';
ALTER USER vault_dba PASSWORD 'ajAhjjtykQUdanL0A8rv';

CREATE DATABASE test_db01 
    WITH ENCODING='UTF8'
    OWNER=postgres
    CONNECTION LIMIT=30;

CREATE DATABASE app01 
    WITH ENCODING='UTF8'
    OWNER=postgres
    CONNECTION LIMIT=30;

CREATE DATABASE app02 
    WITH ENCODING='UTF8'
    OWNER=postgres
    CONNECTION LIMIT=30;

CREATE DATABASE app03 
    WITH ENCODING='UTF8'
    OWNER=postgres
    CONNECTION LIMIT=30;

\l

CREATE TABLE COMPANY(
   id           SERIAL      PRIMARY KEY,
   last_name    VARCHAR(20) NOT NULL,
   first_name   VARCHAR(20) NOT NULL,
   age          INT         DEFAULT '0',
   address      VARCHAR(50),
   salary       INT
);

CREATE TABLE DEPARTMENT(
   id           SERIAL      PRIMARY KEY,
   dept         VARCHAR(50) NOT NULL,
   emd_id       INT         NOT NULL
);


\d

INSERT INTO company (last_name, first_name, age,salary) VALUES ('Jones', 'Thomas', '20', '84000');
INSERT INTO company (last_name, first_name, age,salary) VALUES ('Page', 'Jimmy', '64', '15000000');
INSERT INTO company (last_name, first_name, age,salary) VALUES ('Plant', 'Robert', '65', '15600000');
INSERT INTO company (last_name, first_name, age,salary) VALUES ('Bonham', 'John', '69', '15000000');





 
#!/bin/bash

sqlplus -s SYSTEM/$ORACLE_PWD << SQL
@/opt/oracle/scripts/setup/create-table-student.sql
exit;
SQL

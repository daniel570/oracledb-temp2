#!/bin/bash

sqlplus -s SYSTEM/$ORACLE_PWD << SQL
@/opt/oracle/scripts/setup/sql.sql
exit;
SQL

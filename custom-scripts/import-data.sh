#!/bin/bash

sqlplus -s SYSTEM/Oradoc_db1 << SQL
@/opt/oracle/scripts/setup/sql.sql
exit;
SQL

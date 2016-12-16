#!/bin/bash -ex

wget https://raw.githubusercontent.com/AWSinMotion/code/master/unit4/schema.sql
mysql --host=<HOST> --user=<USER> --password=<PASSWORD> --database=<DATABASE> < schema.sql

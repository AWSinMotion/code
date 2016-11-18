#!/bin/bash -ex

wget https://raw.githubusercontent.com/AWSinMotion/code/master/unit3/schema.sql
mysql --host=xxx --username=awsinmotion -p awsinmotion << schema.sql

#!/bin/bash

# 1. query the db
# 2. save the output in readable format
# 3. send mail with attach using pyt
# 4. cron it

# query the db and save the output in csv format
mysql < getreport.sql | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > checkout_report.csv

# send mail
python sendmail.py
	# text body is the same as attachement-> must use the mail_content.txt file
	# use my main gmail



### http://www.epochta.ru/products/sms/api/examplepy.php
library(XML)

username='yustas'
password='1QaZsE4#2W'

baseuuid <- paste(sample(c(letters[1:6],0:9),30,replace=TRUE),collapse="")
msg_id<-paste(
  substr(baseuuid,1,8), "-",
  substr(baseuuid,9,12), "-", "4",
  substr(baseuuid,13,15), "-", sample(c("8","9","a","b"),1),
  substr(baseuuid,16,18), "-",
  substr(baseuuid,19,30),
  sep="",
  collapse=""
)

send_sms = '<?xml version="1.0" encoding="UTF-8"?>
<SMS>
<operations>
<operation>SEND</operation>
</operations>
<authentification>
<username>%s</username>
<password>%s</password>
</authentification>
<message>
<sender>SMS</sender>
<text>Test message [UTF-8]</text>
</message>
<numbers>
<number messageID="%s">%s</number>
</numbers>
</SMS>'
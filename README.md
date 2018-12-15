Requirement: Zabbix 3.0 +

Installation guide:

Import Template;
Copy "zimbra_queue.sh" to Zabbix Agent folder;
Add following UserParameter in zabbix_agentd.conf:
UserParameter=postfix.queue[*],sudo /etc/zabbix/scripts/zimbra_queue.sh $1 $2
Link template to host;
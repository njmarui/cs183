#!/bin/bash
# usage: undo to restore to defaults

if [[ $1 = "undo" ]]; then
	echo "restoring services..."
	chkconfig auditd on --level 2345
	chkconfig kdump on --level 345
	chkconfig mdmonitor on --level 2345
	#chkconfig netconsole on --level			#none, I guess?
	chkconfig postfix on --level 2345
	#chkconfig restorecond --level			#none
	chkconfig rsyslog --level 2345
	echo "done."
elif [ $# -eq 0 ]; then
	echo "disabling services..."
	chkconfig auditd off # don't need auditing
	chkconfig kdump off # debugging? who needs that if you're perfect
	chkconfig mdmonitor off # we don't have a raid setup
	chkconfig netconsole off #it's already off but we don't need logging
	chkconfig postfix off # don't plan on sending mail
	chkconfig restorecond off # already off, selinux policy compliance
	chkconfig rsyslog off # again, no logging	
else
	echo "usage: blank to disable, 'undo' to undo"
fi
	echo "chkconfig --list | grep 3:on"
	chkconfig --list | grep 3:on

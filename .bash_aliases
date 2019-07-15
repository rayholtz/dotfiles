# My own aliases
alias cdnag='cd /usr/local/nagios/etc/objects'
alias checknag='sudo /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg'
alias checknager='sudo /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg | grep Error'
alias restartnag='sudo service nagios resta
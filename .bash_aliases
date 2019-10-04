# My own aliases
alias cdnag='cd /usr/local/nagios/etc/objects'
alias checknag='sudo /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg'
alias checknager='sudo /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg | grep Error'
alias restartnag='sudo service nagios restart'

alias cdici='cd /etc/icinga2/conf.d'
alias icistat='systemctl status icinga2'
alias restartici='sudo systemctl restart icinga2' 

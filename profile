#------------------------------------------------------------------
#	Paths
#------------------------------------------------------------------
export PATH=/usr/local/mysql/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH	# MacPorts
export PATH=~/bin:$PATH				                			# Personal
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH


#------------------------------------------------------------------
#	Commands
#------------------------------------------------------------------
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'
restart() { touch tmp/restart.txt; }
project() { cd ~/Source/$1; }
fix_permissions() {
	find $1 -type d -exec chmod 0755 {} \;
	find $1 -type f -exec chmod 0644 {} \;
}

#------------------------------------------------------------------
#	Project Auto Completion
#------------------------------------------------------------------
project() { cd ~/Source/$1; }
complete -W "$(echo `ls ~/Source | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" project

source ~/.git-completion.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.


if [ -d /class/cs225 ] ; then
	export PATH=/class/cs225/llvm/bin:$PATH
fi

source $HOME/.aliases
source $HOME/.ssh_aliases

. $HOME/.shellrc.load

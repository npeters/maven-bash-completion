
if [[ $1 == "" ]]; then
	echo ""
	echo "help do generate the plugin_goals_xxx variable for bash_completion.bash";
	echo  "plugin-goals-gen 'plugin-name'";
	echo  "example: plugin-goals-gen dependency";
	exit;
fi

plugin=$1
mvn $plugin:help | grep "^${plugin}:" | sed 's/\n/ /g' | xargs echo |sed 's/ /\|/g'
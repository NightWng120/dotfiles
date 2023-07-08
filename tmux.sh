#!/bin/bash
function tm() {
	result="${PWD##*/}"
	if [ "${result:0:1}" == "." ];then
		result="${result:1:${#result}}"
	fi
	meme=$(tmux attach -t $result)
	if [ meme == "duplicate session: ${result}" ];then
		source ~/.bashrc
		tmux attach -t result
	else
		source ~/.bashrc
		tmux new -s $result
	fi
	#printf '%q\n' $result
}

function ta() {
	tmux attach
}

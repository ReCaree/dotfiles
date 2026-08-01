if status is-interactive
	# Commands to run in interactive sessions can go here
	set -g fish_greeting ""
	
	# Initialize zoxide
	zoxide init --cmd cd fish | source

	# eza aliases for ls
	alias ls='eza --icons=auto'
	alias l='eza -l --icons=auto --git'
	alias la='eza -la --icons=auto --git'
	alias lt='eza --tree --level=2 --icons=auto'

	starship init fish | source
end

if [ -f /opt/homebrew/bin/brew ]
then
	eval "$(/opt/homebrew/bin/brew shellenv)"
	export PATH="$HOMEBREW_PREFIX/lib/ruby/gems/3.4.0/bin:$PATH"
fi

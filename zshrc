ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="robbyrussell"

# Useful plugins for Rails development with Sublime Text
plugins=(gitfast last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search z zsh-autosuggestions history autojump)



# Open RubyGem page in browser
# gemwtf rails

gemwtf() {
  open "https://gem.wtf/$1"
}



# HISTORY
# Provides convenient aliases for history command to examine your command line history.
# Alias 	Command 	Description
# h 	history   	        Prints your command history
# hs 	history | grep 	        Use grep to search your command history
# hsi 	history | grep -i 	Use grep to do a case-ins search of your command history

# Z
# type z followed by any word that is in your desired directory path. The plugin will use fuzzy matching to figure out which folder you want to go to and expand the path accordingly.
# z my-project => /home/jim/files/some/deeply/nested/directory/or/other/my-project

# GIT
#    gaa – git add all
#    gdca – git diff --cached
#    gp – git push
#    gpf! – git push --force
#    grhh – git reset --hard
#    gst – git status


# SHORTCUT in general
#    Ctrl + U – delete from the cursor to the start of the line.
#    Ctrl + K – delete from the cursor to the end of the line.
#    Ctrl + W – delete from the cursor to the start of the preceding word.
#    Alt + D – delete from the cursor to the end of the next word.
#    Ctrl + L – clear the terminal.


# AUTOJUMP
# Jump To A Directory That Contains foo:
# j foo





# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)

# Load rbenv if installed
export PATH="${HOME}/.rbenv/bin:${PATH}"
type -a rbenv > /dev/null && eval "$(rbenv init -)"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
# Same for `./node_modules/.bin` and nodejs
export PATH="./bin:./node_modules/.bin:${PATH}:/usr/local/sbin"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' -a"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' -a"
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' -a"
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' -a"

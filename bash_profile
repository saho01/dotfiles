# Maximum number of history lines in memory
export HISTSIZE=9999999
# Maximum number of history lines on disk
export HISTFILESIZE=9999999
# Ignore duplicate lines
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file 
#  instead of overwriting it
shopt -s histappend

# After each command, append to the history file 
#  and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'n'}history -a; history -c; history -r"

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
alias ..="cd .."
alias ...="cd ../.."
alias gd="git diff"
alias gt="git status"
alias gds="git diff --staged"
alias gp="git pull origin develop"
alias tg="terragrunt"
alias rsv="cd /Users/sethaho/rest/service/vendor"
alias cdo="cd /Users/sethaho/projects/data/data-ops"
alias cfo="cd /Users/sethaho/projects/data/file-ops"
PS1="\u@\h \[\033[1;30m\]\w\[\033[1;37m\]\$(parse_git_branch)\[\033[00m\] $ "
export PATH=/Users/sethaho/Documents/apache-maven-3.6.3/bin:$PATH

# aws version 2
alias aws=/usr/local/Cellar/awscli/2.4.6/bin/aws

# Go
GOPATH="/Users/sethaho/go"
export PATH=$PATH:$GOPATH/bin

export PATH=$PATH:/Users/sethaho/bin

# GOROOT=${HOME}/sdk/go1.15
# GOPATH=${HOME}
# PATH=$PATH:/${GOROOT}/bin:${GOPATH}/bin
# export PATH GOPATH GOROOT

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export AWS_DEFAULT_REGION=us-east-2
alias unset='unset AWS_ACCESS_KEY_ID && unset AWS_SECRET_ACCESS_KEY && unset AWS_SESSION_TOKEN && unset CI_ENVIRONMENT_NAME && export AWS_PROFILE=default'
# alias sandbox='export AWS_PROFILE=sandbox && export CI_ENVIRONMENT_NAME=sandbox && aws-azure-login --profile sandbox --mode gui'
alias sandbox='export AWS_PROFILE=sandbox && export CI_ENVIRONMENT_NAME=sandbox && aws-azure-login --profile sandbox'
# alias development='export AWS_PROFILE=development && export CI_ENVIRONMENT_NAME=development && aws-azure-login --profile development --mode gui'
alias development='export AWS_PROFILE=development && export CI_ENVIRONMENT_NAME=development && aws-azure-login --profile development'
#alias integration='export AWS_PROFILE=integration && export CI_ENVIRONMENT_NAME=integration && aws-azure-login --profile integration --mode gui'
alias integration='export AWS_PROFILE=integration && export CI_ENVIRONMENT_NAME=integration && aws-azure-login --profile integration'
# alias nonprod-dmz='export AWS_PROFILE=nonprod-dmz && export CI_ENVIRONMENT_NAME=nonprod-dmz && aws-azure-login --profile nonprod-dmz --mode gui'
alias nonprod-dmz='export AWS_PROFILE=nonprod-dmz && export CI_ENVIRONMENT_NAME=nonprod-dmz && aws-azure-login --profile nonprod-dmz'
alias nonproduction-dmz='export AWS_PROFILE=nonproduction-dmz && export CI_ENVIRONMENT_NAME=nonproduction-dmz && aws-azure-login --profile nonproduction-dmz'
alias validation='export AWS_PROFILE=validation && export CI_ENVIRONMENT_NAME=validation && aws-azure-login --profile validation --mode gui'
# alias production='export AWS_PROFILE=production && export CI_ENVIRONMENT_NAME=production && aws-azure-login --profile production --mode gui'
alias production='export AWS_PROFILE=production && export CI_ENVIRONMENT_NAME=production && aws-azure-login --profile production'
alias prod-dmz='export AWS_PROFILE=prod-dmz && export CI_ENVIRONMENT_NAME=prod-dmz && aws-azure-login --profile prod-dmz'
alias nonprod-proxy='export AWS_PROFILE=non-production-web-proxy-services && export CI_ENVIRONMENT_NAME=non-production-web-proxy-services && aws-azure-login --profile non-production-web-proxy-services'

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/sethaho/.sdkman"
[[ -s "/Users/sethaho/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/sethaho/.sdkman/bin/sdkman-init.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sethaho/google-cloud-sdk/path.bash.inc' ]; then . '/Users/sethaho/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sethaho/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/sethaho/google-cloud-sdk/completion.bash.inc'; fi
# pyenv (gd it)
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# helps run pytest
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export PATH="/usr/local/opt/go@1.13/bin:$PATH"
export PATH="$HOME/.pyenv/shims:$PATH"

alias tcheck='terraform init && terraform providers lock -platform=darwin_amd64 -platform=linux_amd64 && terraform fmt && terraform validate && tflint --loglevel=info && tfsec . --detailed-exit-code --include-passed'
alias tcheck-up='terraform init -upgrade && terraform providers lock -platform=darwin_amd64 -platform=linux_amd64 && terraform fmt && terraform validate && tflint --loglevel=info && tfsec . --detailed-exit-code --include-passed'
alias sds='sdiff -s -w240'

if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ll="ls -lahS"
alias sd="shred -n 3 -f -u -v -z"
alias wp="cd /mnt/c/Projects"
alias xx="exit"

alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'

alias gadd='git add .'
alias gout='git checkout'
alias gcl='git clone'
alias gc='git commit -m'
alias gpull='git pull origin'
alias gpush='git push -u origin'

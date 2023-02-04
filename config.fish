if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ll="ls -lahS"
alias sd="shred -n 3 -f -u -v -z"
alias wp="cd /mnt/c/Projects"
alias wh="cd /mnt/c/Users/ramir/"
alias home="cd ~/"
alias xx="exit"
alias xxf="tmux kill-server"
alias w="powershell.exe"
alias x="tmux kill-window -t" 

function x2
  for i in ( seq 2 );
    tmux kill-window -t $argv[1]
  end
end

function a
  for i in ( seq $argv[1] );  
    tmux new-window
  end
end

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

if status is-interactive
    # Commands to run in interactive sessions can go here
end

########################################
#                ALIASES               #
########################################

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ll="ls -lahS"
alias wp="cd /mnt/c/Projects"
alias wh="cd /mnt/c/Users/ramir/"
alias hm="cd ~/"
alias xx="exit"
alias xxf="tmux kill-server"
alias w="powershell.exe"
alias x="tmux kill-window -t" 
alias s="tmux copy-mode"

# Memory management
alias df='df -h'                         # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'

# GIT
alias gadd='git add .'
alias gout='git checkout'
alias gcl='git clone'
alias gc='git commit -m'
alias gpull='git pull origin'
alias gpush='git push -u origin'

# SECURITY
alias sd="shred -n 3 -f -u -v -z"

########################################
#              FUNCTIONS               #
########################################

# Delete all files except those ending with x. E.g. ".jpg"
function rmn
  find . -type f \! -name "*.$argv[1]" -exec /bin/rm -i {} \;
end

# kill 2 next windows from windows number x
function x2 
  for i in ( seq 2 );
    tmux kill-window -t $argv[1]
  end
end

# Add x Windows
function a
  for i in ( seq $argv[1] );  
    tmux new-window
  end
end

# Save terminal output from size X
function save
  tmux capture-pane -S $argv[1]
  tmux save-buffer history.backup
end

########################################
#             SSH MANAGER              #
########################################

function sshm
    echo "---------------------------------------------------------------------"
    echo -e "SSH session manager.\nThe following are available to choose from:"
    echo -e "-kali\n-ubuntu\n-rpie" 
    echo "---------------------------------------------------------------------"
    switch $argv[1]
      case kali
        echo "Connecting to kali .."
        ssh kali@192.168.1.222
      case ubuntu 
        echo "Connecting to ubuntu .."
        ssh ubuntu@192.168.1.223
    end
end

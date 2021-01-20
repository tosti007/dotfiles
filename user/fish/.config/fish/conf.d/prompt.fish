# Mostly obtained from https://github.com/oh-my-fish/theme-cmorrell.com

## Function to show a segment
function prompt_segment -d "Function to show a segment"
  # Set colors
  set_color -b $argv[1]
  set_color $argv[2]

  # Print text
  if [ -n "$argv[3]" ]
    echo -n $argv[3]
  end
end

## Function to show current status
function show_status -d "Function to show the current status"
  if [ $RETVAL -ne 0 ]
    prompt_segment red white "!"
    end
  if [ -n "$SSH_CLIENT" ]
      prompt_segment blue white " SSH "
    end
end

function show_virtualenv -d "Show active python virtual environments"
  if set -q VIRTUAL_ENV
    set -l venvname (basename "$VIRTUAL_ENV")
    prompt_segment normal white "($venvname) "
  end
end

# Show directory
function show_pwd -d "Show the current directory"
  set -l pwd (prompt_pwd)
  prompt_segment normal green " $pwd "
end

# Show prompt w/ privilege cue
function show_prompt -d "Shows prompt with cue for current priv"
  set -l uid (id -u $USER)
  if [ $uid -eq 0 ]
    prompt_segment red white " ! "
  else
    prompt_segment normal yellow "%"
  end

  set_color normal
  echo -n " "
end

function show_git_status -d "Gets the current git status"
  if command git rev-parse --is-inside-work-tree >/dev/null 2>&1
    set -l dirty (command git status -s --ignore-submodules=dirty | wc -l | sed -e 's/^ *//' -e 's/ *$//' 2> /dev/null)
    set -l ref (command git describe --tags --exact-match 2> /dev/null ; or command git symbolic-ref --short HEAD 2> /dev/null ; or command git rev-parse --short HEAD 2> /dev/null)

    if [ "$dirty" != "0" ]
      prompt_segment red black " $ref "
    else
      prompt_segment blue black " $ref "
    end
    set_color normal
    echo -n " "
   end
end

## SHOW PROMPT
function fish_prompt
  set -g RETVAL $status
  show_git_status
  show_virtualenv
  show_status
  show_prompt
  # Set the terminal cursor to a line
  echo -e -n "\033[5 q"
end

function fish_right_prompt -d "Prints right prompt"
  show_pwd
  set_color normal
end


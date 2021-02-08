# From: https://fishshell.com/docs/current/index.html#variables-color

###########################################################
# Simple colors
###########################################################

set fish_color_normal normal
set fish_color_command blue
set fish_color_param normal
set fish_color_valid_path --underline
set fish_color_quote yellow
set fish_color_comment white
set fish_color_error brred
set fish_color_match --background=blue
set fish_color_autosuggestion white black
set fish_color_cancel -r

set fish_color_redirection cyan
set fish_color_operator $fish_color_redirection
set fish_color_escape $fish_color_redirection
set fish_color_end $fish_color_redirection

# The colors used to print in some of fish default prompts
set fish_color_cwd green
set fish_color_cwd_root $fish_color_cwd
set fish_color_user green
set fish_color_host blue
set fish_color_host_remote $fish_color_host

# The color used when selecting text (in vi visual mode)
set fish_color_selection white --bold --background=black

# dirh prints the current directory history. The current position in the history is highlighted using the color defined in the fish_color_history_current environment variable.
set fish_color_history_current --bold


###########################################################
# Pager colors
# the secondary and selected values default to the normal value
###########################################################

# Used to highlight history search matches and the selected pager item (must be a background)
set fish_color_search_match green --background=black

# The color of the progress bar at the bottom left corner
set fish_pager_color_progress black --background=green

# The background color of a line
set fish_pager_color_background normal
set fish_pager_color_selected_background $fish_color_search_match
#set fish_pager_color_secondary_background

# The color of the completion itself
set fish_pager_color_completion normal
set fish_pager_color_selected_completion $fish_pager_color_completion --bold
#set fish_pager_color_secondary_completion

# The color of the prefix string, i.e. the string that is to be completed
set fish_pager_color_prefix white --underline
set fish_pager_color_selected_prefix $fish_pager_color_prefix --bold
#set fish_pager_color_secondary_prefix

# The color of the completion description
set fish_pager_color_description green
set fish_pager_color_selected_description $fish_pager_color_description --bold
#set fish_pager_color_secondary_description


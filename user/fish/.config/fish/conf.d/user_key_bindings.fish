function expand_triple_dot -d 'expand ... to ../..'
    set cmd (commandline --cut-at-cursor)

    switch $cmd[-1]
        case '*..'
            commandline --insert '/..'
        case '*'
            commandline --insert '.'
    end
end

# https://github.com/brandon099/fish-prepend-sudo
function prepend_sudo -d "Toggle sudo prefix"
  if test -z (commandline)
    commandline -r $history[1]
  end
  commandline | read -la cmd_buffer
  if not contains "sudo" $cmd_buffer
    commandline -r "sudo $cmd_buffer"
  else
    commandline -r (echo "$cmd_buffer" | sed -E s/"^sudo\s+(.*)"/"\1"/)
  end
end

function fish_user_key_bindings
    # Expand three dots to ../..
    bind . expand_triple_dot

    # Add or remove sudo on double escape
    # We need a delay to actually catch the escape
    set -U fish_escape_delay_ms 300
    bind \e\e prepend_sudo

    bind \[P delete-char
end


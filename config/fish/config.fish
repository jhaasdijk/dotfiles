switch $TERM
    case 'st-*' # suckless' simple terminal
                # Enable keypad, do it once before fish_postexec ever fires
        tput smkx
        function st_smkx --on-event fish_postexec
            tput smkx
        end
        function st_rmkx --on-event fish_preexec
            tput rmkx
        end
end

if status --is-interactive
    abbr --add --global vim nvim
    abbr --add --global ls exa
    abbr --add --global apidoc './node_modules/.bin/apidoc -e node_modules/'
end

set fish_greeting ""


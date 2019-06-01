function fish_mode_prompt
    switch $fish_bind_mode
        case default
            set_color --bold brmagenta
            echo '[N]'
        case insert
            set_color --bold brred
            echo '[I]'
        case replace_one
            set_color --bold bryellow
            echo '[R]'
        case visual
            set_color --bold brcyan
            echo '[V]'
        case '*'
            set_color --bold red
            echo '[?]'
    end
    set_color normal 
end


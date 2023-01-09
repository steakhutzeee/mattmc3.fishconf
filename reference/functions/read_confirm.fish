function read_confirm
    test -n "$argv" && set msg "$argv"; or set msg "Do you want to continue?"

    while true
        read -l -P "$msg [y/N] " confirm

        switch $confirm
            case Y y
                return 0
            case '' N n
                return 1
        end
    end
end
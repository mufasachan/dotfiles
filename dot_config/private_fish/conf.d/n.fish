function n --description "Jump to directory with z or fzf+fd, then open nvim"
    # usage: n
    # run `nvim .`
    if test -z "$argv"
        nvim .
        return $status
    end

    set -l target $argv[1]
    # Try z first
    if not z $target 2>/dev/null
        # 2. z failed, use fzf+fd to search
        set -l selected (fd --type d -H | fzf --query="$target")

        # User cancelled - exit early
        if test -z "$selected"
            return 0
        end

        cd $selected
    end

    nvim .
end

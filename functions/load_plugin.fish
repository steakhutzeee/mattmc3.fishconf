function load_plugin -a plugin
    if test -d $plugin/completions; and not contains $plugin/completions $fish_complete_path
        set fish_complete_path $fish_complete_path[1] $plugin/completions $fish_complete_path[2..-1]
    end
    if test -d $plugin/functions; and not contains $plugin/functions $fish_function_path
        set fish_function_path $fish_function_path[1] $plugin/functions $fish_function_path[2..-1]
    end
    if test -f $plugin/config.fish
        builtin source "$plugin/config.fish"
    end
    for f in $plugin/conf.d/*.fish
        builtin source "$f"
    end
end

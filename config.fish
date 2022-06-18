function fish_greeting
    echo (set_color -o green;)\ \ \ \ \ \ \ \ The Matrix has you, Neo.(set_color normal)
end
export _microarchitecture=13
set SHELL fish
set shell_integration no-cursor
alias update "yay -Syu"
if status is-interactive
    neofetch
end
starship init fish | source

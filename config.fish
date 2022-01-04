set fish_greeting
set SHELL fish
if status is-interactive
    neofetch    
end
    starship init fish | source

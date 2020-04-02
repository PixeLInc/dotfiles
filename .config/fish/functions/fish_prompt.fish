# git stuff
set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color black)

set gay (set_color dda0dd)

# user stuffs
set fish_color_user E55DE5
set fish_color_host dda0dd

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'

set __fish_git_prompt_color_branch green
set __fish_git_prompt_color_upstream_ahead yellow
set __fish_git_prompt_color_upstream_behind red
set __fish_git_prompt_color_dirtystate magenta
set __fish_git_prompt_color_stagedstate green
set __fish_git_prompt_color_untrackedfiles red

# Status Chars
set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_stagedstate 's'
set __fish_git_prompt_char_untrackedfiles 'z'
set __fish_git_prompt_char_stashstate 'h'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

function fish_prompt --description 'Write out the prompt'
    set -l last_status $status
    set -l normal (set_color normal)

    # Color the prompt differently when we're root
    set -l color_cwd $fish_color_cwd
    set -l suffix_color "$gay"

    # If we're running via SSH, change the host color.
    set -l color_host $fish_color_host
    if set -q SSH_TTY
        set color_host $fish_color_host_remote
    end

    # check if last command exited bad
    if test $last_status != 0
      set suffix_color "$red"
    end

    # I don't think this actually works due to,
    # root having a different config.
    if contains -- $USER root toor
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set -l suffix "$suffix_color# "
    end

    set -l suffix "$suffix_color> "

    echo -n -s (set_color $fish_color_user) "$USER" $normal @ (set_color $color_host) (prompt_hostname) $normal ' ' (set_color $color_cwd) (prompt_pwd) $normal (fish_vcs_prompt) $normal $suffix
end

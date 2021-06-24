# vim settings and aliases
set -x EDITOR nvim

function e
  edit $argv
end

# ls aliases
function l
  ll $argv
end

function d
  ll $argv
end

function j
  z $argv
end

# bd settings and aliases
set -gx BD_OPT 'insensitive'

function b
  bd $argv
end

function bb
  cd ../..
end

function bbb
  cd ../../..
end

function bbbb
  cd ../../../..
end

function bbbbb
  cd ../../../../..
end

# tree aliases
function t
  tree $argv
end

function tra
  tree -a $argv
end

function trd
  tree -d $argv
end

# Git aliases
function gst
  git status $argv
end

function gdf
  git diff $argv
end

function gdt
  git difftool $argv
end

function gps
  git push $argv
end

function gpl
  git pull $argv
end

function gad
  git add $argv
end

function gcm
  git commit $argv
end

# Find in name (ignore case)
function fin
  find -iname "*$argv*"
end

# Find in filetype (ignore case)
function fit
  find -iname "*.$argv"
end


# Find directory in current directory with pattern
function fid
  find -maxdepth 1 -iname "*$argv*" -type d
end

function gig
  curl -L -s https://www.gitignore.io/api/$argv > .gitignore
  echo ".gitignore file created:"
  cat .gitignore
end

# TODO: Change this to one gig command
function gigls
  curl -L -s https://www.gitignore.io/api/list
end

function tro
  tree -L 1 $argv
end

function trt
  tree -L 2 $argv
end

function gv
  if count $argv > /dev/null
    gwenview $argv
  else
    gwenview .
  end
end

# Colored man pages
set -x LESS_TERMCAP_mb (printf "\033[01;31m")
set -x LESS_TERMCAP_md (printf "\033[01;31m")
set -x LESS_TERMCAP_me (printf "\033[0m")
set -x LESS_TERMCAP_se (printf "\033[0m")
set -x LESS_TERMCAP_so (printf "\033[01;44;33m")
set -x LESS_TERMCAP_ue (printf "\033[0m")
set -x LESS_TERMCAP_us (printf "\033[01;32m")
#set -x LESS="-R"

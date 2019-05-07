# Add Git branch to command line
function parse_git_branch
{
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\[\1\]/'
}

COLOR=''
NC=''
PS1='${COLOR}\[\033[1m\]$(parse_git_branch)\[\033[0m\]${NC} \h:\W \u >> '
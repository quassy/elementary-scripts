echo "# Alias for package management
alias p+='sudo apt-get install '
alias p-='sudo apt-get remove '
alias p--='sudo apt-get purge '
alias p?='apt-cache search '
alias p*='sudo apt-get update && sudo apt-get upgrade'
# Alias for repository management
function r+ {
  sudo add-apt-repository \$1 && sudo apt-get update
}
function r- {
  sudo add-apt-repository --remove \$1 && sudo apt-get update
}
function r-- {
  sudo ppa-purge \$1 && sudo apt-get update
}" >> ~/.bash_aliases
source ~/.bash_aliases
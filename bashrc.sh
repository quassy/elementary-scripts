# Alias for package management
alias p+='sudo apt-get install '
alias p-='sudo apt-get remove '
alias p--='sudo apt-get purge '
alias p?='apt-cache search '
alias p*='sudo apt-get update && sudo apt-get upgrade'
# Alias for repository management
r+() {
  sudo add-apt-repository $1 && sudo apt-get update
}
r-() {
  sudo add-apt-repository --remove $1 && sudo apt-get update
}
r--() {
  sudo ppa-purge $1 && sudo apt-get update
}
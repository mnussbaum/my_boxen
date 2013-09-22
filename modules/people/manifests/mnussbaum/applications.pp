class people::mnussbaum::applications {
  include zsh
  include vim
  include tmux
  class { "people::mnussbaum::battery": }
}

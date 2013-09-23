class people::mnussbaum::applications {
  include zsh
  include vim
  include tmux
  include chrome
  include adium
  include firefox
  include better_touch_tools
  include caffeine
  include slate
  class { "people::mnussbaum::battery": }
}

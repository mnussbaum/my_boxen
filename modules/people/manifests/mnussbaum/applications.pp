class people::mnussbaum::applications {
  include adium
  class { "people::mnussbaum::battery": }
  include better_touch_tools
  include caffeine
  include chrome
  include dropbox
  include firefox
  include littlesnitch
  include slate
  include tmux
  include vim
  include zsh
}

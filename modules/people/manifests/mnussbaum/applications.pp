class people::mnussbaum::applications {
  include adium
  class { "people::mnussbaum::battery": }
  include better_touch_tools
  include caffeine
  include chrome
  include dropbox
  include firefox
  include keepassx
  include littlesnitch
  include onepassword
  class { "people::mnussbaum::load_pckeyboardhack": }
  include slate
  include tmux
  include transmission
  include vagrant
  include vim
  include virtualbox
  include viscosity
  include zsh
}

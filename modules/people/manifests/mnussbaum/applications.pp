class people::mnussbaum::applications {
  include adium
  class { "people::mnussbaum::battery": }
  include better_touch_tools
  include caffeine
  include chrome
  include ctags
  include dropbox
  include firefox
  package { "gnupg": ensure => "present", }
  include keepassx
  include littlesnitch
  include onepassword
  include pckeyboardhack
  include slate
  include tmux
  include transmission
  include vagrant
  vagrant::plugin { "vagrant-vbguest":
    require => Class["vagrant"],
  }
  include vim
  include virtualbox
  include viscosity
  include zsh
}

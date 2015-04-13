class people::mnussbaum::applications {
  include adium
  class { "people::mnussbaum::battery": }
  include better_touch_tools
  include chrome
  include ctags
  include dropbox
  include firefox
  include flux
  package { "gnupg": ensure => "present", }
  include heroku
  include keepassx
  include onepassword
  include seil
  include slate
  homebrew::tap { "nviennot/tmate": } ->
    package { "tmate": ensure => present }
  include tmux
  include transmission
  include vagrant
  vagrant::plugin { "vagrant-vbguest": }
  include vim
  include virtualbox
  include viscosity
  include zsh
}

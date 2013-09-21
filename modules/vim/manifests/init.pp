class vim {
  package { "docutils":
    ensure => installed,
    provider => pip,
  }
  package { "mercurial":
    ensure => installed,
    require => Package["docutils"],
  }
  package { "vim":
    ensure => installed,
    require => Package["mercurial"],
  }
}

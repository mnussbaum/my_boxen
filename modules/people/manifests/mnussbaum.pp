class people::mnussbaum {
  include configs
  include ir_black_terminal
  include source_code_pro_regular_for_powerline

  class { "people::mnussbaum::applications":
    require => Class["configs"],
  }

  class { "people::mnussbaum::login_items":
    require => Class["people::mnussbaum::applications"],
  }

  ##################################
  ## Facter, Puppet, and Envpuppet##
  ##################################

  repository { "${::boxen_srcdir}/puppet":
    source => "puppetlabs/puppet",
  }

  repository { "${::boxen_srcdir}/facter":
    source => "puppetlabs/facter",
  }

  file { "/bin/envpuppet":
    ensure  => link,
    mode    => "0755",
    target  => "${::boxen_srcdir}/puppet/ext/envpuppet",
    require => Repository["${::boxen_srcdir}/puppet"],
  }
}

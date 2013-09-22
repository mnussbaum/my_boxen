class people::mnussbaum {
  include configs

  class { "people::mnussbaum::applications":
    require => Class["configs"],
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

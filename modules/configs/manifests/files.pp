class configs::files($home, $config_dir) {
  $non_templated_configs = [
    "gitconfig",
    "pythonrc",
    "tmux.conf",
    "vimrc",
    "rspec",
    "inputrc",
    "irbrc",
  ]

  $config_files = [
    "zshrc",
    $non_templated_configs
  ]

  file { $config_dir:
    ensure => directory,
    mode => "0755",
  }

  file { "${config_dir}/zshrc":
    content => template("configs/zshrc.erb"),
    require => File[$config_dir],
    mode => "0644",
  }

  file { "${config_dir}/vim":
    source => "puppet:///modules/configs/vim",
    mode => "0755",
    require => File[$config_dir],
  }

  configs::add_file{ $non_templated_configs:
    home => $home,
    config_dir => $config_dir,
    require => File[$config_dir],
  }

  configs::symlink_config{ $config_files:
    home => $home,
    config_dir => $config_dir,
    require => File[$config_dir],
  }

  configs::symlink_config{ "vim":
    home => $home,
    config_dir => $config_dir,
    mode => "0755",
    require => File[$config_dir],
  }
}

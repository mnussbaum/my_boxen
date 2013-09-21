class configs::files($home, $config_dir) {
  $non_templated_configs = [
    "gitconfig",
    "pythonrc",
    "tmux.conf",
    "vim",
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
    ensure => directory
  }

  file { "${config_dir}/zshrc":
    content => template("configs/zshrc.erb"),
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
}

define configs::symlink_config($home, $config_dir) {
  file { "${home}/.${name}":
    ensure => link,
    target => "${config_dir}/${name}",
  }
}

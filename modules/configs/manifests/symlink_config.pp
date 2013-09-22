define configs::symlink_config(
  $home,
  $config_dir,
  $mode = "0644",
) {
  file { "${home}/.${name}":
    ensure => link,
    target => "${config_dir}/${name}",
    mode => $mode,
  }
}

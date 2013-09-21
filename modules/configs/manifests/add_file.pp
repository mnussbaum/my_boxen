define configs::add_file($home, $config_dir) {
  file { "${config_dir}/${name}":
    source => "puppet:///modules/configs/${name}"
  }
}

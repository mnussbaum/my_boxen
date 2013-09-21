class configs {
  $home = "/Users/${::boxen_user}"
  $config_dir = "${home}/configs"

  class { "configs::files":
    home => $home,
    config_dir => $config_dir,
  }
}

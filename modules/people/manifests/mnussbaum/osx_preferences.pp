class people::mnussbaum::osx_preferences {
  include people::mnussbaum::osx_preferences::finder
  include people::mnussbaum::osx_preferences::dock
  include people::mnussbaum::osx_preferences::input_preferences

  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_autocorrect
  include osx::disable_app_quarantine
  include osx::no_network_dsstores

  hot_corners { "Desktop":
    corner => "bottom right",
    action => "desktop",
  }
  hot_corners { "Mission Control":
    corner => "bottom left",
    action => "mission control",
  }
  hot_corners { "Screen Saver":
    corner => "top left",
    action => "start screensaver",
  }
  boxen::osx_defaults{ "Disable Dashboard":
    domain => "com.apple.dashboard",
    key    => "mcx-disabled",
    type   => "boolean",
    value  => true,
    user   => $::boxen_user,
  }
  boxen::osx_defaults{ "Dashboard Isn't A Space":
    domain => "com.apple.dock",
    key    => "dashboard-in-overlay",
    type   => "boolean",
    value  => true,
    user   => $::boxen_user,
  }
  boxen::osx_defaults{ "Don't Change MissionControl Order":
    domain => "com.apple.dock",
    key    => "mru-spaces",
    type   => "boolean",
    value  => false,
    user   => $::boxen_user,
  }
}

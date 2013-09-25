class people::mnussbaum::osx_preferences::finder {
  include osx::finder::unhide_library
  boxen::osx_defaults { "Show File Extensions":
    domain => "AppleShowAllExtensions",
    key    => "NSGlobalDomain",
    type   => "boolean",
    value  => true,
    user   => $::boxen_user,
  }
  boxen::osx_defaults{ "Show Path In Title":
    domain => "com.apple.finder",
    key    => "_FXShowPosixPathInTitle",
    type   => "boolean",
    value  => true,
    user   => $::boxen_user,
  }
  boxen::osx_defaults{ "Warn On Empty Trash":
    domain => "com.apple.finder",
    key    => "WarnOnEmptyTrash",
    type   => "boolean",
    value  => false,
    user   => $::boxen_user,
  }
  boxen::osx_defaults{ "Search In Current Directory":
    domain => "com.apple.finder",
    key    => "FXDefaultSearchScope",
    type   => "string",
    value  => "SCcf",
    user   => $::boxen_user,
  }
  boxen::osx_defaults{ "Show Pathbar":
    domain => "com.apple.finder",
    key    => "ShowPathbar",
    type   => "boolean",
    value  => true,
    user   => $::boxen_user,
  }
}

class people::mnussbaum::osx_preferences::dock {
  include osx::dock::autohide
  include dockutil
  dockutil::item {
    'Add Terminal':
      item     => "/Applications/Utilities/Terminal.app",
      label    => "Terminal",
      action   => "add",
      position => 1;

    'Add Chrome':
      item     => "/Applications/Google Chrome.app",
      label    => "Chrome",
      action   => "add",
      position => 2,
      require  => Class["chrome"];

    'Add Firefox':
      item     => "/Applications/Firefox.app",
      label    => "Firefox",
      action   => "add",
      position => 3,
      require  => Class["firefox"];

    'Add Slack':
      item     => "/Applications/Slack.app",
      label    => "Slack",
      action   => "add",
      position => 4,
      require  => Class["adium"];

    ## Remove all default applications
    'Remove Launchpad':
      item   => "/Applications/Launchpad.app",
      label  => "Launchpad",
      action => "remove";

    'Remove Mission Control':
      item   => "/Applications/Mission Control.app",
      label  => "Mission Control",
      action => "remove";

    'Remove iPhoto':
      item   => "/Applications/iPhoto.app",
      label  => "iPhoto",
      action => "remove";

    'Remove Safari':
      item   => "/Applications/Safari.app",
      label  => "Safari",
      action => "remove";

    'Remove Mail':
      item   => "/Applications/Mail.app",
      label  => "Mail",
      action => "remove";

    'Remove Contacts':
      item   => "/Applications/Contacts.app",
      label  => "Contacts",
      action => "remove";

    'Remove Calendar':
      item   => "/Applications/Calendar.app",
      label  => "Calendar",
      action => "remove";

    'Remove Messages':
      item   => "/Applications/Messages.app",
      label  => "Messages",
      action => "remove";

    'Remove Reminders':
      item   => "/Applications/Reminders.app",
      label  => "Reminders",
      action => "remove";

    'Remove Notes':
      item   => "/Applications/Notes.app",
      label  => "Notes",
      action => "remove";

    'Remove FaceTime':
      item   => "/Applications/FaceTime.app",
      label  => "FaceTime",
      action => "remove";

    'Remove Photo Booth':
      item   => "/Applications/Photo Booth.app",
      label  => "Photo Booth",
      action => "remove";

    'Remove iTunes':
      item   => "/Applications/iTunes.app",
      label  => "iTunes",
      action => "remove";

    'Remove App Store':
      item   => "/Applications/App Store.app",
      label  => "App Store",
      action => "remove";
  }
}

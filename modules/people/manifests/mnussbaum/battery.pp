class people::mnussbaum::battery {
  homebrew::tap { "Goles/battery": }
  package { "battery":
    ensure  => present,
    require => Homebrew::Tap["Goles/battery"],
  }
}

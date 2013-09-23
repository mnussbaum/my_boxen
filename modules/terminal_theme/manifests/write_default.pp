define terminal_theme::write_default(
  $value,
  $terminal_plist,
) {
    exec { "defaults write com.apple.Terminal '${name}' '${value}'":
      unless  => "defaults read com.apple.Terminal '${name}' | grep '${value}'",
      require => File[$terminal_plist],
    }
}

class people::mnussbaum::login_items {
  $login_items = [
    "BetterTouchTool",
    "Caffeine",
    "Dropbox",
    "Flux",
    "Slate",
    "Seil",
  ]
  people::mnussbaum::login_item{ $login_items: }
}

define people::mnussbaum::login_item() {
  $path = "/Applications/${name}.app"
  $add_login_item = "tell application \"System Events\" to make login item at end with properties {name:\"${name}\", path:\"${path}\", hidden:true}"
  $get_login_items = "tell application \"System Events\" to get the name of every login item"

  exec { "login_item_${name}":
    command => "osascript -e '${add_login_item}'",
    unless  => "osascript -e '${get_login_items}' | grep ${name}",
  }
}

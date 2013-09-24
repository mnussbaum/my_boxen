class people::mnussbaum::load_pckeyboardhack {
  include pckeyboardhack

  include pckeyboardhack::login_item

  pckeyboardhack::bind { "keyboard bindings":
    mappings => { "capslock" => 53 }
  }
}

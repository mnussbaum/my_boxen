class ir_black_terminal() {
    $ir_black = "/tmp/IR_Black_modified.terminal"
    file { $ir_black:
      source => "puppet:///modules/ir_black_terminal/IR_Black_modified.terminal",
      mode   => "0644",
    }

    $source_code_pro_regular_for_powerline = "/Users/${boxen_user}/Library/Fonts/SourceCodePro-Regular-Powerline.otf"
    $import_ir_black = "open ${ir_black}"
    exec { $import_ir_black:
      require => [File[$ir_black], File[$source_code_pro_regular_for_powerline]],
      unless => "defaults read com.apple.Terminal 'Window Settings' | grep IR_Black",
    }

    class { "terminal_theme":
      theme  => "IR_Black_modified",
      require => Exec[$import_ir_black],
    }
}

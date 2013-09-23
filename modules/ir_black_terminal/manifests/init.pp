class ir_black_terminal() {
    $ir_black = "/tmp/IR_Black_modified.terminal"
    file { $ir_black:
      source => "puppet:///modules/ir_black_terminal/IR_Black_modified.terminal",
      mode   => "0644",
    }

    $import_ir_black = "open ${ir_black}"
    exec { $import_ir_black:
      require => File[$ir_black],
      unless => "defaults read com.apple.Terminal 'Window Settings' | grep IR_Black",
    }

    class { "terminal_theme":
      theme  => "IR_Black_modified",
      require => Exec[$import_ir_black],
    }
}

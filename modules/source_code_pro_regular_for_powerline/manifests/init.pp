class source_code_pro_regular_for_powerline {
  file { "/Users/${boxen_user}/Library/Fonts/SourceCodePro-Regular-Powerline.otf":
    source => "puppet:///modules/source_code_pro_regular_for_powerline/SourceCodePro-Regular-Powerline.otf",
    mode   => "0644",
  }
}

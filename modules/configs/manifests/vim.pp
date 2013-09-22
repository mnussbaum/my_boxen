class configs::vim($config_dir) {
  $vundle = "${config_dir}/vim/bundle/vundle"
  repository { $vundle:
    source => "gmarik/vundle",
  }

  $vundle_install = "vim -u ${config_dir}/vimrc +BundleInstall +qall"
  exec { $vundle_install:
    environment   => "CONFIG_PATH=${config_dir}",
    subscribe     => File["${config_dir}/vimrc"],
    refreshonly   => true,
  }

  package { "cmake":
    ensure => installed,
  }

  exec { "install_youcompleteme_plugin":
    command => "sh install.sh",
    cwd     => "${config_dir}/vim/bundle/YouCompleteMe",
    creates => "${config_dir}/vim/bundle/YouCompleteMe/python/ycm_core.so",
  }

  Repository[$vundle] ->
  Exec[$vundle_install] ->
  Package["cmake"] ->
  Exec["install_youcompleteme_plugin"]
}

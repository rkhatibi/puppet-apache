class apache {

  include apache::params, apache::install, apache::config, apache::service
  Class['apache::install'] -> Class['apache::config'] ~> Class['apache::service']

}

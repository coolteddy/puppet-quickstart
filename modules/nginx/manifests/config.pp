# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include nginx::config
class nginx::config (
  $config_path   = $nginx::params::config_path,
  $config_source = $nginx::params::config_source,
  $service_name  = $nginx::params::service_name,
) inherits nginx::params {
  file { 'nginx_congig':
    path   => $config_path,
    source => $config_source,
    ensure => $nginx::config_ensure,
    notify => Service['nginx_service'],
  }
}

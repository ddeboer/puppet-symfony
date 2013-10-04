# Configures the webserver for Symfony2 applications
define symfony::webserver (
  $webserver = 'nginx',
  $vhostDir  = '/vagrant',
  $template  = 'symfony/nginx/vhost.dev.conf.erb'
) {
  if ('nginx' == $webserver) {
    file { "/etc/nginx/conf.d/${name}.conf":
      ensure  => present,
      content => template($template),
      notify  => Service['nginx'],
    }
  }
}
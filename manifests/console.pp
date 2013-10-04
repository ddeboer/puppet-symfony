# Executes Symfony2 console commands
define symfony::console (
  $dir = '/vagrant'
) {
  Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

  exec { "${dir}/app/console ${name}":
    command => "php ${dir}/app/console ${name}"
  }
}
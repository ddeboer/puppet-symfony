# Copies parameters.yml.dist to parameters.yml
define symfony::parameters (
  $original = "${name}.dist"
) {
  file { "${name}":
    ensure  => present,
    content => template("$original")
  }
}
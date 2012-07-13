define s3cmd::config(
    $access_key,
    $secret_key,
    $user = "root",
    $group = "root",
    $user_home = "/root",
    $use_https = "False",
    $gpg_command = "None",
    $gpg_passphrase = "") {

  include s3cmd
      
  file { "${user_home}/.s3cfg":
    ensure => present,
    owner => $user,
    group => $group,
    mode => 0600,
    content => template("s3cmd/s3cfg.erb"),
    require => Class["s3cmd::install"]
  }

}


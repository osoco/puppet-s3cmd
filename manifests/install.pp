class s3cmd::install {

  package { "net-misc/s3cmd":
    ensure => present
  }
  
}

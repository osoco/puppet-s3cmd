define s3cmd::get(
    $bucket,
    $object,
    $local_file) {

  exec { "s3cmd-get-$bucket-$object":
    command => "s3cmd get s3://$bucket/$object $local_file"
  }
  
}

define s3cmd::get(
    $bucket,
    $object,
    $local_file,
    $options) {

  exec { "s3cmd-get-$bucket-$object":
    command => "s3cmd $options get s3://$bucket/$object $local_file"
  }
  
}

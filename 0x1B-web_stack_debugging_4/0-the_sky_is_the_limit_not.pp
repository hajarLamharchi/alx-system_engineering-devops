# puppet manifest to change the limit of file descriptor

file { '/etc/default/nginx':
  ensure  => file,
  content => "ULIMIT='-n 4096'\n",
}

exec { 'restart nginx':
  command     => '/usr/bin/sudo /usr/bin/service nginx restart',
}

# puppet manifest to change the limit of file descriptor

file_line { 'increase_ulimit':
  ensure  => present,
  path    => '/etc/default/nginx',
  match   => '^ULIMIT="-n 15"$',
  line    => 'ULIMIT="-n 4096"',
}

# puppet manifest to change the limit of file descriptor

file_line { 'increase_ulimit':
  ensure  => present,
  path    => '/etc/default/nginx',
  line    => 'ULIMIT="-n 15"',
  replace => 'ULIMIT="-n 4096"',
}

# puppet manifest to change the limit of file descriptor

file { '/etc/default/nginx':
  ensure  => present,
  content => inline_template("# /etc/default/nginx\n<%= 'ulimit -n 4096' %>\n"),
}

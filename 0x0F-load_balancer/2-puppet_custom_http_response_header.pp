# Creating a custom HTTP header response

exec {'update':
  command  => 'sudo apt-get update',
  provider => shell,
}

package {'nginx':
  ensure => 'installed',
}

file_line {'add_header':
  path    => '/etc/nginx/sites-available/default',
  line    => 'listen 80 default_server',
  content => '\n\tadd_header X-Served-By \"${hostname}\";',
}

exec {'run':
  command  => 'sudo service nginx start',
  provider => shell,
}

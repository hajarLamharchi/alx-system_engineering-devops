# Creating a custom HTTP header response

$hostname = $::hostname

exec {'update':
  command  => 'sudo apt-get update',
  provider => shell,
}

package {'nginx':
  ensure => 'installed',
}

service {'nginx':
  ensure  => 'running',
  enable  => true,
  require => Package['nginx'],
}

exec {'http header response':
  command  => "sudo sed -i \"/listen 80 default_server;/a add_header X-Served-By '${hostname}';\" /etc/nginx/sites-available/default",
  provider => shell,
  require  => Package['nginx'],
  notify   => Exec['nginx_restart'],
}

exec {'nginx_restart':
  command     => 'sudo service nginx restart',
  provider    => shell,
  refreshonly => true,
}

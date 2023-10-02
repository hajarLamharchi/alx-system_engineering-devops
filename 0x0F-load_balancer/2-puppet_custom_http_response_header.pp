# Creating a custom HTTP header response

exec {'update':
  command  => 'sudo apt-get update',
  provider => shell,
}

package {'nginx':
  ensure => 'installed',
}

exec {'http header response':
  command => 'sudo sed -i "/listen 80 default_server;/a add_header X-Served-By \${HOSTNAME};" /etc/nginx/sites-available/default',
  provider => shell,
}

exec {'run':
  command  => 'sudo service nginx restart',
  provider => shell,
}

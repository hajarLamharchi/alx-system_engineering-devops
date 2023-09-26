# server configuration with puppet

exec {'install':
  command  => 'sudo apt-get update; sudo apt-get -y install nginx',
  provider => shell,
}

file { '/var/www/html/index.html':
  ensure => 'file',
  content => 'Hello World!',
}

exec {'run':
  command => 'sudo service nginx start',
  provider => shell,
}

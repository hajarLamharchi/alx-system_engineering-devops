# This file executes the command pkill

exec {'kill_my_process':
  command   => '/usr/bin/pkill -f killmenow',
  path      => '/home/vagrant/alx-system_engineering-devops/0x0A-configuration_management',
  logoutput => true
}

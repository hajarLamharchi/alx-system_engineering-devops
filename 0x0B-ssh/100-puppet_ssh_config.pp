#!/usr/bin/env bash
# This script sets up ssh configuration using puppet

file_line {'Turn off passwd auth':
  ensure => present,
  path   => '/home/ubuntu/.ssh/config',
  line   => 'PasswordAuthentication no'
}

file_line {'Declare identity file':
  ensure => present,
  path   => '/home/ubuntu/.ssh/config',
  line   => 'IdentityFile /home/vagrant/.ssh/school'
}

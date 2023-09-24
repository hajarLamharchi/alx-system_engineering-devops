#!/usr/bin/env bash
# This script sets up ssh configuration using puppet

$str = "Host 370337-web-01
		HostName 52.86.213.205
		Port 22
		User ubuntu
		IdentityFile /home/vagrant/.ssh/school
		PasswordAuthentication no"

file {'/home/ubuntu/.ssh/config':
  ensure  => file,
  owner   => 'ubuntu',
  group   => 'ubuntu',
  mode    => '0600',
  content => $str
}

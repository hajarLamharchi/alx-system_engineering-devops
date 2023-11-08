# web stuck debugging using strace, fixing the issue and automate it

file {'/var/www/html/wp-settings.php':
  ensure  => 'present',
  match   => '.*\.phpp.*',
  replace => 's/\.phpp/\.php/',
}

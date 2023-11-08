# web stuck debugging using strace, fixing the issue and automate it

file_line {'replace':
  path    => '/var/www/html/wp-settings.php',
  match   => '.*\.phpp.*',
  replace => 's/\.phpp/\.php/',
}

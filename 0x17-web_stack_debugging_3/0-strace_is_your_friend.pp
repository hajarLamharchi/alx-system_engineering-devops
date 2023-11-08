# web stuck debugging using strace, fixing the issue and automate it

$file_path = '/var/www/html/wp-settings.php'

file { $file_path:
  ensure  => 'present',
  content => inline_template("<%= File.read('#{$filepath}').gsub('phpp', 'php') %>"),
}

Gem::Specification.new do |s|
  s.name        = 'firehouse'
  s.version     = '0.0.1'
  s.executables << 'fire'
  s.date        = '2014-03-11'
  s.summary     = "Nearest Firehouse"
  s.description = "Walking directions to nearest firehouse"
  s.authors     = ["Chris Guthrie"]
  s.email       = 'christopher.a.guthrie@gmail.com'
  s.files       =  Dir["{config}/*", "{lib}/*", "{db}/*", "{db}/migrations/*"]
  s.homepage    =
    'http://www.github.com/caguthrie/firehouse'
  s.license       = 'MIT'
  # s.add_runtime_dependency('geocoder')
  # s.add_runtime_dependency('launchy')
  # s.add_runtime_dependency('sqlite3')
  # s.add_runtime_dependency('activerecord')
  # s.add_runtime_dependency('rest-client')
end
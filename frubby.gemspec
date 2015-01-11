Gem::Specification.new do |s|
  s.name = 'frubby'
  s.version = '0.1'
  s.license = 'MIT'
  s.summary = 'Add color methods to String class'
  s.description = 'Ruby String class extension. Adds methods to set text color, background color and, text effects on ruby console and command line output, using ANSI escape sequences.'
  s.authors = ['Michał Kalbarczyk']
  s.email = 'fazibear@gmail.com'
  s.homepage = 'http://github.com/fazibear/frubby'
  
  s.date = Time.now.strftime("%Y-%m-%d")
  
  s.add_dependency 'fuzzy_match'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'

  s.files = Dir['*.rb']
end

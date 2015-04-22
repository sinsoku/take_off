$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'take_off/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'take_off'
  s.version     = TakeOff::VERSION
  s.authors     = ['sinsoku']
  s.email       = ['sinsoku.listy@gmail.com']
  s.homepage    = 'https://github.com/sinsoku/take_off'
  s.summary     = 'TakeOff is a rails engine for creating landing page quickly.'
  s.description = 'TakeOff is a rails engine for creating landing page quickly.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 4.2.0'
  s.add_dependency 'rails_admin', '~> 0.6.6'

  s.add_development_dependency 'sqlite3'
end

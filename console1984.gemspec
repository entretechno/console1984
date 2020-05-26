$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'console1984/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'console1984'
  spec.version     = Console1984::VERSION
  spec.authors     = ['Jorge Manrubia']
  spec.email       = ['jorge@basecamp.com']
  spec.homepage    = 'http://github.com/basecamp/console1984'
  spec.summary     = 'Your Rails console, 1984 style'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'jbuilder'
  spec.add_dependency 'rails', '>= 6.0.0'
  spec.add_dependency 'rainbow', '~> 3.0.0'

  spec.add_development_dependency 'benchmark-ips'
  spec.add_development_dependency 'mocha'
  spec.add_development_dependency 'rubocop', '>= 0.82.0'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'rubocop-rails'
  spec.add_development_dependency 'sqlite3'
end
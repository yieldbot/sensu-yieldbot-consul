lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'

require 'sensu-yieldbot-consul'

Gem::Specification.new do |s|
  s.authors                = ["Yieldbot, Inc. and contributors"]
  s.date                   = Date.today.to_s
  s.description            = 'Sensu plugins for working with Consul'
  s.email                  = '<devops@yieldbot.com>'
  s.executables            = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.files                  = Dir.glob('{bin,lib}/**/*') + %w(LICENSE README.md CHANGELOG.md)
  s.homepage               = 'https://github.com/yieldbot/sensu-yieldbot-consul'
  s.license                = 'MIT'
  s.name                   = 'sensu-yieldbot-consul'
  s.platform               = Gem::Platform::RUBY
  s.require_paths          = ["lib"]
  s.required_ruby_version  = '>= 1.9.3'
  s.summary                = 'Sensu plugins for working with Consul'
  s.test_files             = s.files.grep(%r{^(test|spec|features)/})
  s.version                = SensuYieldbotConsul::VERSION

  s.add_runtime_dependency 'sensu-plugin', '1.1.0'
  s.add_runtime_dependency 'rest-client',  '1.8.0'
  s.add_runtime_dependency 'diplomat',     '0.5.1'

  s.add_development_dependency 'rubocop',       '0.17.0'
  s.add_development_dependency 'rspec',         '~> 3.1'
  s.add_development_dependency 'bundler',       '~> 1.7'
  s.add_development_dependency 'rake',          '~> 10.0'
  s.add_development_dependency 'github-markup', '~> 1.3'
  s.add_development_dependency 'redcarpet',     '~> 3.2'
  s.add_development_dependency 'yard',          '~> 0.8'
  s.add_development_dependency 'pry',           '~> 0.10'
end

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'

if RUBY_VERSION < '2.0.0'
  require 'sensu-plugins-consul'
else
  require_relative 'lib/sensu-plugins-consul'
end

Gem::Specification.new do |s|
  s.name                   = 'sensu-plugins-consul'
  s.version                = SensuPluginsConsul::VERSION
  s.authors                = ["Yieldbot, Inc. and contributors"]
  s.email                  = '<devsops@yieldbot.com>'
  s.homepage               = 'https://github.com/yieldbot/sensu-yieldbot-consul'
  s.summary                = ''
  s.description            = ''
  s.license                = 'MIT'
  s.date                   = Date.today.to_s
  s.files                  = Dir.glob('{bin,lib}/**/*') + %w(LICENSE README.md CHANGELOG.md)
  s.executables            = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files             = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths          = ["lib"]
  s.platform               = Gem::Platform::RUBY
  s.required_ruby_version  = '>= 1.9.3'

  s.add_runtime_dependency 'sensu-plugin', '1.1.0'
  s.add_runtime_dependency 'rest-client', '1.8.0'
  s.add_runtime_dependency 'diplomat', '0.5.1'

  s.add_development_dependency 'codeclimate-test-reporter'
  s.add_development_dependency 'rubocop',       '0.17.0'
  s.add_development_dependency 'rspec',         '~> 3.1'
  s.add_development_dependency 'bundler',       '~> 1.7'
  s.add_development_dependency 'rake',          '~> 10.0'
  s.add_development_dependency 'github-markup', '~> 1.3'
  s.add_development_dependency 'redcarpet',     '~> 3.2'
  s.add_development_dependency 'yard',          '~> 0.8'
  s.add_development_dependency 'pry',           '~> 0.10'
end

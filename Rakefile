require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'yard'
require 'github/markup'
require 'rubocop/rake_task'
require 'redcarpet'
require 'yard/rake/yardoc_task'
require_relative 'lib/sensu-yieldbot-consul'
require 'json'

args = [:spec, :make_bin_executable, :yard, :rubocop]

YARD::Rake::YardocTask.new do |t|
  OTHER_PATHS = %w()
  t.files = ['lib/**/*.rb', 'bin/**/*.rb', OTHER_PATHS]
  t.options = %w(--markup-provider=redcarpet --markup=markdown --main=README.md --files CHANGELOG.md)
end

Rubocop::RakeTask.new

RSpec::Core::RakeTask.new(:spec) do |r|
  r.pattern = FileList['**/**/*_spec.rb']
end

desc 'Make all plugins executable'
task :make_bin_executable do
  `chmod -R +x bin/*`
end

desc 'Retrieve the current version of sensu-yieldbot-consul'
task :version do
 #
 #  {
 #     "version" => "0.0.1"
 # }.to_json
#  puts '0.0.1'.
  # puts SensuYieldbotConsul::Version.json_version
  # puts SensuYieldbotConsul::TOTAL.json_version
  puts SensuYieldbotConsul::Version.json_version
end

task default: args

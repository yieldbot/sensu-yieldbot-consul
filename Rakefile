require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'yard'
require 'github/markup'
require 'rubocop/rake_task'
require 'redcarpet'
require 'yard/rake/yardoc_task'
require_relative 'lib/sensu-yieldbot-consul'

args = [:spec, :make_bin_executable, :yard, :rubocop]

YARD::Rake::YardocTask.new do |t|
  OTHER_PATHS = %w()
  t.files = ['lib/**/*.rb', 'bin/**/*.rb', OTHER_PATHS]
  t.options = %w(--markup-provider=redcarpet --markup=markdown --main=README.md --files CHANGELOG.md)
end

#Rubocop::RakeTask.new

RSpec::Core::RakeTask.new(:spec) do |r|
  r.pattern = FileList['**/**/*_spec.rb']
end

desc 'Make all plugins executable'
task :make_bin_executable do
  `chmod -R +x bin/*`
end

desc 'Retrieve the current version of sensu-yieldbot-consul'
task :version do
  puts SensuYieldbotConsul::Version.json_version
end

desc 'Bump the PATCH version of Sensu-Yieldbot-Plugins'
task :bump do
  version_file = 'lib/sensu-yieldbot-consul/version.rb'

  # Read the file, bump the PATCH version
  contents = File.read(version_file).gsub(/(PATCH = )(\d+)/) { |_| Regexp.last_match[1] + (Regexp.last_match[2].to_i + 1).to_s }

  # Write the new contents of the file
  File.open(version_file, 'w') { |file| file.puts contents }
end

task default: args

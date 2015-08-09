require 'rubygems'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'

# ==============================================
# Rspec
# ==============================================

desc 'Run all RSpec tests'
RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = '--format progress'
end


# ==============================================
# Cucumber
# ==============================================

desc 'Run all Cucumber tests'
Cucumber::Rake::Task.new(:cucumber) do |task|
  task.cucumber_opts = ['--format=progress', 'tests', '--require tests/features']
end


# ==============================================

task :default => [:cucumber]
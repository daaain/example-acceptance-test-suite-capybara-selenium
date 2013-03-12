require 'rubygems'
require 'cucumber/rake/task'

desc "Run all examples"
Cucumber::Rake::Task.new(:cucumber) do |task|
  task.cucumber_opts = ['--format=progress', 'tests/features']
end

task :default => [:cucumber]
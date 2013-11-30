require 'rubygems'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'

# ==============================================
# Rspec
# ==============================================

desc 'Run all RSpec tests'
RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = '--format html --out reports/rspec_results.html'
end

namespace :rspec_report do
  desc 'Run all specs and generate RSpec report in HTML'
  task :html => :spec
 
  desc 'Run all specs, generate RSpec report and open it in the browser'
  task :browser do
    Rake::Task[:spec].invoke
    `open reports/rspec_results.html` # This only works if running OS X.
  end
end

# ==============================================
# Cucumber
# ==============================================

desc 'Run all Cucumber tests'
Cucumber::Rake::Task.new(:cucumber) do |task|
  task.cucumber_opts = ['--format=progress', 'tests/features']
end

# namespace :cucumber_report do
#   desc 'Run all specs and generate Cucumber report in HTML'
#   task :html => :spec
 
#   desc 'Run all specs, generate Cucumber report and open it in the browser'
#   task :browser do
#     Rake::Task[:spec].invoke
#     `open reports/rspec_results.html` # This only works if running OS X.
#   end
# end

# ==============================================

task :default => [:cucumber]
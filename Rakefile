begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)

  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:features)

  require 'bundler/gem_tasks'

  task :default => [:spec, :features]
rescue LoadError
end

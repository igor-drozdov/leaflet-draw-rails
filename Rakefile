begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

begin
  require 'rspec/core/rake_task'
  require 'cucumber/rake/task'

  RSpec::Core::RakeTask.new(:spec)
  Cucumber::Rake::Task.new

  task default: [ :spec, :cucumber ]
rescue LoadError
end

Bundler::GemHelper.install_tasks

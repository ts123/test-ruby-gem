require "rake/clean"
require "bundler/gem_tasks"
require "rspec/core/rake_task"

CLEAN.include("pkg", "coverage") 

RSpec::Core::RakeTask.new(:spec)

task :default => :spec


# coding: utf-8
require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "cheezburger"
    gem.summary = "BDD for lolcats!"
    gem.description = "BDD for lolcats! Just require it in your Gemfile and you got funny specs for free!"
    gem.email = "info@codegram.com"
    gem.homepage = "http://github.com/codegram/cheezburger"
    gem.authors = ["Oriol Gual", "Josep M. Bach", "Josep Jaume Rey"]

    gem.add_dependency 'rspec', ">= 2.0.0.beta.20"

    gem.add_development_dependency "jeweler", '>= 1.4.0'
    gem.add_development_dependency "bundler", '>= 1.0.0'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

# Rake RSpec2 task stuff
gem 'rspec', '>= 2.0.0.beta.20'
gem 'rspec-expectations'

require 'rspec/core/rake_task'

desc "Run the specs under spec"
RSpec::Core::RakeTask.new do |t|
end

task :default => :spec

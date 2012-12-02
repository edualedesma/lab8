$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Run rspec with --format documentation - Class Matriz"
task :specman do
  sh "rspec -Ilib spec/matriz_spec.rb --format documentation"
end

desc "Run rspec with format: html - Class Matriz"
task :thtml do
  sh "rspec -Ilib spec/matriz_spec.rb --format html > index.html"
end

desc "Run rspec for development - Class Racional"
task :racspec do
  sh "rspec -Ilib spec/racional_spec.rb"
end
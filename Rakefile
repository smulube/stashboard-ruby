require 'rake/clean'
require 'rake/rdoctask'

require 'bundler'
Bundler::GemHelper.install_tasks

CLEAN.include("pkg")
CLOBBER.include("pkg", "doc")

Rake::RDocTask.new do |rd|
  rd.main = "README.md"
  rd.rdoc_files.include("README.md", "lib/**/*.rb")
  rd.rdoc_dir = "doc"
end

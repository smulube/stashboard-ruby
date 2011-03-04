require 'rake/clean'

require 'bundler'
Bundler::GemHelper.install_tasks

CLEAN.include("pkg")
CLOBBER.include("doc")

namespace :doc do
  project_root = File.expand_path(File.dirname(__FILE__))
  doc_destination = File.join(project_root, 'doc', 'rdoc')

  begin
    require 'yard'
    require 'yard/rake/yardoc_task'

    YARD::Rake::YardocTask.new(:generate) do |yt|
      yt.files = Dir.glob(File.join(project_root, 'lib', '**', '*.rb')) + 
        [File.join(project_root, 'README.md') ]
      yt.options = ['--output-dir', doc_destination, '--readme', 'README.md']
    end
  rescue LoadError
    desc "Generate YARD Documentation"
    task :generate do
      abort "Please install the YARD gem to generate rdoc."
    end
  end
end

require 'rake'

require 'spec/rake/spectask'
require 'spec'

require 'cucumber'
require 'cucumber/rake/task'

Spec::Rake::SpecTask.new('spec') do |t|
  t.spec_files = FileList['spec/**/*.rb']
end

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format progress"
end

task :default => [:spec, :features]
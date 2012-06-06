# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'courgette/version'

Gem::Specification.new do |s|
  s.name        = 'courgette'
  s.homepage    = 'http://21croissants.github.com/courgette/'
  s.summary     = %q{Courgette is a Rails engine which makes your cucumber features files viewable through your browser.}
  s.description = s.summary

  s.authors     = []
  s.email       = []
  `git log </dev/null | git shortlog --summary --numbered --email`.scan(/^\s*\d*\s*(.*)\s*<(\S*)>$/) { s.authors << $1; s.email << $2 }

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rspec-rails', '2.6.1'
  s.add_development_dependency 'cucumber', '0.9.0'
  s.add_development_dependency 'cucumber-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'envjs'
  s.add_development_dependency 'launchy' # for save_and_open_page debugging

  # Fake Rails app in fixture_rails_root
  s.add_development_dependency 'rails', '~> 3.0.10'
  s.add_development_dependency 'sqlite3-ruby'

  s.files         = `git ls-files </dev/null`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.require_paths = ['lib']
  s.version       = Courgette::Version
  s.platform      = Gem::Platform::RUBY
end

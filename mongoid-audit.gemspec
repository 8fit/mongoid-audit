# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid-audit/version'

Gem::Specification.new do |gem|
  gem.name          = "mongoid-audit"
  gem.version       = Mongoid::Audit::VERSION
  gem.authors       = ["Gleb Tv"]
  gem.email         = ["glebtv@gmail.com"]
  gem.description   = %q{Mongoid Audit}
  gem.summary       = %q{Easily track model change history and mantain audit log with mongoid}
  gem.homepage      = "https://github.com/rs-pro/mongoid-audit"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  s.specification_version = 3

  s.add_runtime_dependency('easy_diff', ">= 0")
  s.add_runtime_dependency('mongoid', ">= 3.0.4")

  s.add_development_dependency('rspec', ["~> 2.12.0"])
  s.add_development_dependency('bundler', ['>= 1.0.0'])
  s.add_development_dependency('database_cleaner', [">= 0.8.0"])
  s.add_development_dependency('activesupport', '~> 3.2.11')
end

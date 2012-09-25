# -*- encoding: utf-8 -*-
require File.expand_path('../lib/whittle/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Michael Gorsuch"]
  gem.email         = ["michael.gorsuch@gmail.com"]
  gem.description   = %q{A command line key=value logger}
  gem.summary       = gem.description
  gem.homepage      = 'https://github.com/gorsuch/whittle'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "whittle"
  gem.require_paths = ["lib"]
  gem.version       = Whittle::VERSION
  gem.add_dependency('kv')
  gem.add_dependency('pg')
  gem.add_dependency('sequel')
end

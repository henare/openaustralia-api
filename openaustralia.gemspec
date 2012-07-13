# -*- encoding: utf-8 -*-
require File.expand_path('../lib/openaustralia/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Henare Degan", "Alex Cooper"]
  gem.email         = ["henare.degan@gmail.com"]
  gem.description   = 'OpenAustralia API'
  gem.summary       = 'Ruby wrapper for the OpenAustralia API'
  gem.homepage      = 'https://github.com/henare/openaustralia-api/'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "openaustralia"
  gem.require_paths = ["lib"]
  gem.version       = OpenAustralia::VERSION

  gem.add_dependency 'xml-mapping'
  gem.add_dependency 'rake'
end

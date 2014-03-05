# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "ikachan-client"
  spec.version       = '0.1'
  spec.authors       = ['studio3104']
  spec.email         = ['studio3104.com@gmail.com']
  spec.summary       = 'post message to irc http gateway `ikachan`'
  spec.description   = 'post message to irc http gateway `ikachan` (see: https://metacpan.org/module/ikachan)'
  spec.homepage      = 'https://github.com/studio3104/ikachan-client'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'
end

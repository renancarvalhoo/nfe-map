# coding: utf-8
$:.push File.expand_path("../lib", __FILE__)
#lib = File.expand_path('../lib', __FILE__)
#$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = "nfe-map"
  spec.version       = NFeMap::VERSION
  spec.authors       = ["Renan Carvalho"]
  spec.email         = ["renan.azevedo.carvalho@gmail.com"]

  spec.summary       = %q{Mapear Nota Fiscal Eletrônica}
  spec.description   = %q{Gem para mapear os dados da nota fiscal eletrônica para a versão 3.10}
  spec.homepage      = ""

  spec.rubyforge_project = "nfe-map"

  spec.files = `git ls-files`.split("\n")
  spec.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "activesupport", '~> 4'
  spec.add_dependency "activemodel",   '~> 4'
  spec.add_runtime_dependency 'em-http-request'
  spec.add_runtime_dependency 'redis'
  spec.add_runtime_dependency 'resque'
  spec.add_runtime_dependency 'nokogiri'
  spec.add_runtime_dependency 'roxml'
  spec.add_runtime_dependency 'savon'

end

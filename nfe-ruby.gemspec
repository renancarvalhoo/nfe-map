# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "version"

Gem::Specification.new do |s|
  s.name        = "nfe-ruby"
  s.version     = NFeRuby::VERSION
  s.authors     = ["Vinicius Gati"]
  s.email       = ["viniciusgati@gmail.com"]
  s.homepage    = ""
  s.summary     = "Projeto Nota Fiscal Eletronica"
  s.description = "Gem criada para interagir com o sistema de notas fiscais eletronicas do governo brasileiro"

  s.rubyforge_project = "nfe-ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rspec'
  s.add_runtime_dependency 'em-http-request'
  s.add_runtime_dependency 'redis'
  s.add_runtime_dependency 'resque'
  s.add_runtime_dependency 'nokogiri'
  s.add_runtime_dependency 'roxml'
  s.add_runtime_dependency 'savon'
end

# -*- encoding: utf-8 -*-

=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "assembly_ruby/version"

Gem::Specification.new do |s|
  s.name        = "assembly_ruby"
  s.version     = AssemblyRuby::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["OpenAPI-Generator"]
  s.email       = ["support@assemblypayments.com"]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "Assembly API Ruby Gem"
  s.description = "Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end

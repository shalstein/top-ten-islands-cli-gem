# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'top_ten_islands_cli_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "top_ten_islands_cli_gem"
  spec.version       = TopTenIslandsCliGem::VERSION
  spec.authors       = ["Sholom Steinmetz"]
  spec.email         = ["sholomsteinmetz@gmail.com"]

  spec.summary       = "Shows a list of the worlds top ten islands to visit"
  spec.description   = "Shows a list of the worlds top ten islands to go to for a vacation after a long day of coding"
  spec.homepage      = "https://github.com/peacestone/top-ten-islands-cli-gem"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["top_ten_islands_cli_gem"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri", "~> 1.6", ">= 0"
  spec.add_development_dependency "pry", "~> 0.10.3"
  spec.add_development_dependency "rubysl-open-uri", "~> 2.0", ">= 2.0"

end

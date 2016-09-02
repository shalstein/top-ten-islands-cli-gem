# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'top_ten_islands_cli_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "top_ten_islands_cli_gem"
  spec.version       = TopTenIslandsCliGem::VERSION
  spec.authors       = ["Shalom Steinmetz"]
  spec.email         = ["sholomsteinmetz@gmail.com"]

  spec.summary       = "Provides a list of the best islands in the world"

  spec.homepage      = "https://github.com/peacestone/top-ten-islands-cli-gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib","lib/top_ten_islands_cli_gem"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "open-uri"

end

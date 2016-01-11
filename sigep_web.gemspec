# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sigep_web/version'

Gem::Specification.new do |spec|
  spec.name          = "sigep_web"
  spec.version       = SigepWeb::VERSION
  spec.authors       = ["Marcelo Perini Veloso\n\n"]
  spec.email         = ["marcelo.perini.veloso@gmail.com"]

  spec.summary       = %q{A gem to integrate Sigep Web API}
  spec.description   = %q{This gem provide a easy way to integrate an application to Correios Sigep Web API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.rubyforge_project = 'sigep_web'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

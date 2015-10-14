# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'birthcert/version'

Gem::Specification.new do |spec|
  spec.name          = "birthcert"
  spec.version       = Birthcert::VERSION
  spec.authors       = ["Nick Wood"]
  spec.email         = ["nickswift498@gmail.com"]
  spec.summary       = %q{A random person-name generator}
  spec.homepage      = "https://github.com/nickswift/birthcert"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f| 
    f.match(%r{^(test|spec|features)/}) 
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) do |f| 
    File.basename(f) 
  end

  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.8.1"
end

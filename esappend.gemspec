lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'esappend/version'

Gem::Specification.new do |spec|
  spec.name          = "esappend"
  spec.version       = Esappend::VERSION
  spec.authors       = ["Mitsutaka Mimura"]
  spec.email         = ["takkanm@gmail.com"]

  spec.summary       = %q{Esappend is utility for esa.io}
  spec.description   = %q{Esappend is utility for esa.io. It's can append message to specify page.}
  spec.homepage      = "http://github.com/takkanm/esappend"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "esa"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end

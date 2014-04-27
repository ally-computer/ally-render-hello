# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ally/render/hello/version'

Gem::Specification.new do |spec|
  spec.name          = "ally-render-hello"
  spec.version       = Ally::Render::Hello::VERSION
  spec.authors       = ["Chad Barraford"]
  spec.email         = ["cbarraford@gmail.com"]
  spec.description   = %q{A simple ally render plugin that says hello back}
  spec.summary       = %q{Say hello back ally}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ["lib"]

  spec.add_dependency 'ally'

  # development dependencies
  spec.add_development_dependency "bundler", "~> 1.3"
  %W( rake rspec rubocop ally-io-test ).each do |gem|
    spec.add_development_dependency gem
  end
end

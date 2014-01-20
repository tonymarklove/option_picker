# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'option_picker/version'

Gem::Specification.new do |spec|
  spec.name          = "option_picker"
  spec.version       = OptionPicker::VERSION
  spec.authors       = ["Tony Marklove"]
  spec.email         = ["tony@new-bamboo.co.uk"]
  spec.description   = %q{OptionPicker allows you to create a list of allowed options, and specify a fallback. When given a value the picker will then return the value if it is in the allowed list, otherwise it will return the default value.}
  spec.summary       = %q{Pick from a list of allowed options, otherwise fallback to a default value.}
  spec.homepage      = "https://github.com/jjbananas/option_picker"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

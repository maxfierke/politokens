# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "politokens/version"

Gem::Specification.new do |spec|
  spec.name          = "politokens"
  spec.version       = Politokens::VERSION
  spec.authors       = ["Max Fierke", "Usman Bashir"]
  spec.email         = ["max@maxfierke.com"]
  spec.summary       = "Heroku-like random name generator with geopolitcal twist"
  spec.description   = "Generate memorable random names to use in your apps"\
                       " or anywhere else. Fork of Haikunator with a gepolitical twist"
  spec.homepage      = "https://github.com/maxfierke/politokens"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "coveralls"
end

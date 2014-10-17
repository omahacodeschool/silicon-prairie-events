# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'silicon_prairie_event/version'

Gem::Specification.new do |spec|
  spec.name          = "silicon_prairie_event"
  spec.version       = SiliconPrairieEvent::VERSION
  spec.authors       = ["“Kyle Schmit and Matt Taylor"]
  spec.email         = ["kschmit90@gmail.com"]
  spec.summary       = %q{Silicon Prairie Event Scraper}
  spec.description   = %q{Event scraper which collects information from several calendars in the Silicon Prairie.}
  spec.homepage      = "https://github.com/omahacodeschool/silicon-prairie-events"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  
  spec.add_dependency 'httparty'
end

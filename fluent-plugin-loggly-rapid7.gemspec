# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "fluent-plugin-loggly-rapid7"
  s.version     = "0.0.1"
  s.authors     = ["Patrik Antonsson", "Rich Taylor"]
  s.email       = ["patant@gmail.com", "Rich_Taylor@rapid7.com"]
  s.homepage    = "https://github.com/patant/fluent-plugin-loggly"
  s.summary     = %q{Rapid7 fork of Fluentd plugin for output to loggly}
  s.description = %q{Fluentd pluging (fluentd.org) for output to loggly (loggly.com)}

  s.rubyforge_project = "fluent-plugin-loggly-rapid7"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("~> 1.9.2")

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end

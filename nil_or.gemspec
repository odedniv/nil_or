# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "nil_or"
  s.version     = "1.0.0"
  s.authors     = ["Oded Niv"]
  s.email       = ["oded.niv@gmail.com"]
  s.homepage    = "https://github.com/odedniv/nil_or"
  s.summary     = %q{Execute Unless Nil}
  s.description = %q{Delegates methods to the object or returns nil.}

  s.rubyforge_project = "nil_or"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

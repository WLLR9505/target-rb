
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "target_menu/version"

Gem::Specification.new do |spec|
  spec.name          = "target_menu"
  spec.version       = TargetMenu::VERSION
  spec.authors       = ["Weuller Jr. Souza"]
  spec.email         = ["weuller9505@live.com"]

  spec.summary       = %q{Menu simples para demonstração de funções}
  spec.description   = %q{}
  spec.homepage      = "https://wllr9505.github.io"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir['lib/**/*.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

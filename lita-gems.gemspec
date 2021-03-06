Gem::Specification.new do |spec|
  spec.name          = "lita-gems"
  spec.version       = "1.1.0"
  spec.authors       = ["marsz"]
  spec.email         = ["marsz330@gmail.com"]
  spec.description   = "lita handler for rubygems.org querying"
  spec.summary       = "lita handler for rubygems.org querying"
  spec.homepage      = "https://github.com/marsz/lita-gems"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 2.6"
  spec.add_runtime_dependency "gems", ">= 0.8.0"

  spec.add_development_dependency "bundler", ">= 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3"

  spec.metadata = { "lita_plugin_type" => "handler" }
end

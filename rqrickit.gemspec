require_relative 'lib/rqrickit/version'

Gem::Specification.new do |spec|
  spec.name          = "rqrickit"
  spec.version       = Rqrickit::VERSION
  spec.authors       = ["Josh Burns"]
  spec.email         = ["joshyburnss@gmail.com"]

  spec.summary       = "Ruby wrapper library for the QRickit QR Code API"
  spec.description   = "Ruby wrapper library for the QRickit QR Code API"
  spec.homepage      = "https://github.com/contactify/rqrickit"

  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/contactify/rqrickit"
  spec.metadata["changelog_uri"] = "https://github.com/contactify/rqrickit"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end

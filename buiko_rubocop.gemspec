Gem::Specification.new do |spec|
  spec.name          = "buiko_rubocop"
  spec.version       = "0.1.0"
  spec.authors       = ["Fonsan"]
  spec.email         = ["fonsan@gmail.com"]

  spec.summary       = 'shared rubocop spec'
  spec.description   = 'shared rubocop spec'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop"
  spec.add_dependency "rubocop-performance"
  spec.add_dependency "rubocop-rspec"
  spec.add_development_dependency "rake"
end

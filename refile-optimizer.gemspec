# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "refile/optimizer/version"

Gem::Specification.new do |spec|
  spec.name          = "refile-optimizer"
  spec.version       = Refile::Optimizer::VERSION
  spec.authors       = ["Steven Barragán"]
  spec.email         = ["me@steven.mx"]

  spec.summary       = "refile + mini_magick + image_optim = 💣"
  spec.description   = "Image optimizer for Refile"
  spec.homepage      = "https://github.com/stacksocial/refile-optimizer/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "refile-mini_magick", "~> 0.2.0"
  spec.add_dependency "image_optim", "~> 0.24"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.46.0"
end

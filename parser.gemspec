
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "parser/version"

Gem::Specification.new do |spec|
  spec.name          = "parser"
  spec.version       = Parser::VERSION
  spec.authors       = ["Ryan Flores"]
  spec.email         = ["refactor8@gmail.com"]

  spec.summary       = "Ruby webserver log parser coding challenge"
  spec.description   = "Write a ruby script that receives a log as argument and returns a list of webpages with post page views ordered from most pages views to less page views e.g.: /home 90 visits, /index 80 visits etc... List of webpages with most unique page views also ordered e.g.: /about/2 8 unique views /index 5 unique views"
  spec.homepage      = "https://github.com/refactor8"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables << 'parser'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

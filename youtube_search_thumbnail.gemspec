# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'youtube_search_thumbnail/version'

Gem::Specification.new do |spec|
  spec.name          = "youtube_search_thumbnail"
  spec.version       = YoutubeSearchThumbnail::VERSION
  spec.authors       = ["butilities"]
  spec.email         = ["butilities@gmail.com"]

  spec.summary       = %q{Get Youtube thumbnails from search query}
  spec.homepage      = "https://github.com/butilities/youtube_search_thumbnail.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~> 1.8"
  spec.add_dependency "video_thumb" , "~> 0.1.4"
  spec.add_dependency "celluloid" , "~> 0.17.3"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end

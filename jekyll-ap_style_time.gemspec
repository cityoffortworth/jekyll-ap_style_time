Gem::Specification.new do |spec|

  spec.name          = 'jekyll-ap_style_time'
  spec.version       = '0.0.2'
  spec.authors       = ['Greg Scott']
  spec.email         = ['me@gregoryjscott.com']
  spec.summary       = %q{Liquid filter for displaying AP style time and date values.}
  spec.homepage      = 'https://github.com/cityoffortworth/jekyll-ap_style_time'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'jekyll', '~> 2.5'

end

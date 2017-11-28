# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'material_components_web/sass/version'

Gem::Specification.new do |spec|
  spec.name          = 'material_components_web-sass'
  spec.version       = MaterialComponentsWeb::Sass::VERSION
  spec.authors       = ['Dmitriy Tarasov']
  spec.email         = ['info@rubysamurai.com']

  spec.summary       = 'Material Components for the web (MDC-Web) with Material Icons and Roboto font for Sass applications'
  spec.description   = 'Material Components for the web (MDC-Web) with Material Icons and Roboto font for Sass applications'
  spec.homepage      = 'https://github.com/rubysamurai/material_components_web-sass'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency 'autoprefixer-rails', '>= 6.5'
  spec.add_runtime_dependency 'sass', '>= 3.4'

  spec.add_development_dependency 'json', '>= 2.0'
  spec.add_development_dependency 'railties', '>= 5.0'
  spec.add_development_dependency 'rspec', '>= 3.5'
  spec.add_development_dependency 'sprockets-rails', '>= 3.0'
end

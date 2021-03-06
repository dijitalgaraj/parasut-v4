# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parasut/version'

Gem::Specification.new do |spec|
  spec.name                  = 'parasut-v4'
  spec.version               = Parasut::VERSION
  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.0.0'
  spec.authors               = ['Dijital Garaj','Furkan Enes Apaydın','Dunya Kirkali', 'Onur Kucukkecce']
  spec.email                 = ['hello@dijitalgaraj.com','feapaydin@gmail.com','dunyakirkali@ahtung.co', 'onurkucukkece@ahtung.co']

  spec.summary               = %q{Parasut client.}
  spec.description           = %q{Parasut client.}
  spec.homepage              = 'https://github.com/dijitalgaraj/parasut-v4'
  spec.license               = 'MIT'



  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'
  spec.add_development_dependency 'bundler', '>= 1.13.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.49.0'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'webmock'
  spec.add_runtime_dependency 'oauth2'
  spec.add_runtime_dependency 'her', '1.1.0'
  spec.add_runtime_dependency 'kaminari', '0.17.0'
end

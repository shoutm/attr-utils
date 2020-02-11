lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'attr-utils/version'

Gem::Specification.new do |s|
  s.name        = 'attr-utils'
  s.version     = AttrUtils::Version
  s.date        = '2020-02-11'
  s.summary     = "Utilities of class attributes in Ruby language"
  s.description = ""
  s.authors     = ["Shota Morimoto"]
  s.email       = 'shouta.morimoto@gmail.com'
  s.files       = Dir["LICENSE", "README.md", "lib/**/*"]
  s.homepage    = 'https://twitter.com/shoutm'
  s.license     = 'MIT'
end

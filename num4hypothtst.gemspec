Gem::Specification.new do |s|
  s.name        = 'num4hypothtst'
  s.version     = '0.2.2'
  s.date        = '2025-11-07'
  s.summary     = 'num for statistical test'
  s.description = 'num for test of statistical hypothesis!'
  s.authors       = ["siranovel"]
  s.email         = "siranovel@gmail.com"
  s.homepage      = "http://github.com/siranovel/num4hypothtst"
  s.license       = "MIT"
  s.required_ruby_version = ">= 3.0"
  s.files         = ["LICENSE", "Gemfile", "CHANGELOG.md"]
  s.files         += Dir.glob("{lib,ext}/**/*")
  s.extensions  = %w[Rakefile]
  s.add_dependency 'rake', '~> 13', '>= 13.0.6'
  s.add_dependency 'rake-compiler', '~> 1.3', '>= 1.3.0'
end


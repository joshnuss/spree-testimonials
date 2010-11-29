Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_testimonials'
  s.version     = '3.0.2'
  s.summary     = 'Adds the ability to manage testimonials to a spree site'
  s.description = 'With this gem you get management tools to make it very easy to update your testimonials thru the admin section'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Josh Nussbaum'
  s.email             = 'joshnuss@gmail.com'
  s.homepage          = 'http://spreecommerce.com'
  s.rubyforge_project = 'spree_testimonials'

  s.files        = Dir['README.md', 'lib/**/*', 'app/**/*', 'config/*', 'db/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = false

  s.add_dependency('spree_core',  '>= 0.30.1')
end


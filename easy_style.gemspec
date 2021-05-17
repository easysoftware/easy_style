require_relative 'lib/easy_style/version'

Gem::Specification.new do |spec|
  spec.name          = 'easy_style'
  spec.version       = EasyStyle::VERSION
  spec.authors       = ['Easy Software Ltd']
  spec.email         = ['info@easyredmine.com']

  spec.summary       = 'Rubocop configs'
  spec.description   = 'Rubocop configs'
  spec.homepage      = 'https://github.com/easysoftware/easy_style'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  # spec.metadata['allowed_push_host'] = 'TODO: Set to \'http://mygemserver.com\''

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop-rails', '~> 2.9.1'
end

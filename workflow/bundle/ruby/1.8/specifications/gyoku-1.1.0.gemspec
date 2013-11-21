# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{gyoku}
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Harrington"]
  s.date = %q{2013-07-26}
  s.description = %q{Gyoku translates Ruby Hashes to XML}
  s.email = %q{me@rubiii.com}
  s.files = [".gitignore", ".rspec", ".travis.yml", "CHANGELOG.md", "Gemfile", "MIT-LICENSE", "README.md", "Rakefile", "gyoku.gemspec", "lib/gyoku.rb", "lib/gyoku/array.rb", "lib/gyoku/hash.rb", "lib/gyoku/version.rb", "lib/gyoku/xml_key.rb", "lib/gyoku/xml_value.rb", "spec/gyoku/array_spec.rb", "spec/gyoku/hash_spec.rb", "spec/gyoku/xml_key_spec.rb", "spec/gyoku/xml_value_spec.rb", "spec/gyoku_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{https://github.com/savonrb/gyoku}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{gyoku}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Translates Ruby Hashes to XML}
  s.test_files = ["spec/gyoku/array_spec.rb", "spec/gyoku/hash_spec.rb", "spec/gyoku/xml_key_spec.rb", "spec/gyoku/xml_value_spec.rb", "spec/gyoku_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 4

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 2.1.2"])
      s.add_development_dependency(%q<rake>, ["~> 0.9"])
      s.add_development_dependency(%q<rspec>, ["~> 2.10"])
    else
      s.add_dependency(%q<builder>, [">= 2.1.2"])
      s.add_dependency(%q<rake>, ["~> 0.9"])
      s.add_dependency(%q<rspec>, ["~> 2.10"])
    end
  else
    s.add_dependency(%q<builder>, [">= 2.1.2"])
    s.add_dependency(%q<rake>, ["~> 0.9"])
    s.add_dependency(%q<rspec>, ["~> 2.10"])
  end
end

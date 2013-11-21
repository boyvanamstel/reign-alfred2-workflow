# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{fuzzy_match}
  s.version = "2.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Seamus Abshere"]
  s.date = %q{2013-09-19}
  s.default_executable = %q{fuzzy_match}
  s.description = %q{Find a needle in a haystack using string similarity and (optionally) regexp rules. Replaces loose_tight_dictionary.}
  s.email = ["seamus@abshere.net"]
  s.executables = ["fuzzy_match"]
  s.files = [".gitignore", ".rspec", "CHANGELOG", "Gemfile", "LICENSE", "README.markdown", "Rakefile", "THANKS-WILLIAM-JAMES.rb", "benchmark/before-with-free.txt", "benchmark/before-without-last-result.txt", "benchmark/before.txt", "benchmark/memory.rb", "bin/fuzzy_match", "fuzzy_match.gemspec", "groupings-screenshot.png", "highlevel.graffle", "highlevel.png", "lib/fuzzy_match.rb", "lib/fuzzy_match/cached_result.rb", "lib/fuzzy_match/record.rb", "lib/fuzzy_match/result.rb", "lib/fuzzy_match/rule.rb", "lib/fuzzy_match/rule/grouping.rb", "lib/fuzzy_match/rule/identity.rb", "lib/fuzzy_match/score.rb", "lib/fuzzy_match/score/amatch.rb", "lib/fuzzy_match/score/pure_ruby.rb", "lib/fuzzy_match/similarity.rb", "lib/fuzzy_match/version.rb", "spec/amatch_spec.rb", "spec/cache_spec.rb", "spec/foo.rb", "spec/fuzzy_match_spec.rb", "spec/grouping_spec.rb", "spec/identity_spec.rb", "spec/record_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{https://github.com/seamusabshere/fuzzy_match}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{fuzzy_match}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Find a needle in a haystack using string similarity and (optionally) regexp rules. Replaces loose_tight_dictionary.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<active_record_inline_schema>, [">= 0.4.0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rspec-core>, [">= 0"])
      s.add_development_dependency(%q<rspec-expectations>, [">= 0"])
      s.add_development_dependency(%q<rspec-mocks>, [">= 0"])
      s.add_development_dependency(%q<activerecord>, [">= 3"])
      s.add_development_dependency(%q<mysql2>, [">= 0"])
      s.add_development_dependency(%q<cohort_analysis>, [">= 0"])
      s.add_development_dependency(%q<weighted_average>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<amatch>, [">= 0"])
    else
      s.add_dependency(%q<active_record_inline_schema>, [">= 0.4.0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rspec-core>, [">= 0"])
      s.add_dependency(%q<rspec-expectations>, [">= 0"])
      s.add_dependency(%q<rspec-mocks>, [">= 0"])
      s.add_dependency(%q<activerecord>, [">= 3"])
      s.add_dependency(%q<mysql2>, [">= 0"])
      s.add_dependency(%q<cohort_analysis>, [">= 0"])
      s.add_dependency(%q<weighted_average>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<amatch>, [">= 0"])
    end
  else
    s.add_dependency(%q<active_record_inline_schema>, [">= 0.4.0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rspec-core>, [">= 0"])
    s.add_dependency(%q<rspec-expectations>, [">= 0"])
    s.add_dependency(%q<rspec-mocks>, [">= 0"])
    s.add_dependency(%q<activerecord>, [">= 3"])
    s.add_dependency(%q<mysql2>, [">= 0"])
    s.add_dependency(%q<cohort_analysis>, [">= 0"])
    s.add_dependency(%q<weighted_average>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<amatch>, [">= 0"])
  end
end

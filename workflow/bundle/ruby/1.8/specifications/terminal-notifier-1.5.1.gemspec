# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{terminal-notifier}
  s.version = "1.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eloy Duran"]
  s.date = %q{2013-08-30}
  s.default_executable = %q{terminal-notifier}
  s.email = ["eloy.de.enige@gmail.com"]
  s.executables = ["terminal-notifier"]
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["bin/terminal-notifier", "lib/terminal-notifier.rb", "vendor/terminal-notifier/README.markdown", "vendor/terminal-notifier/terminal-notifier.app/Contents/Info.plist", "vendor/terminal-notifier/terminal-notifier.app/Contents/MacOS/terminal-notifier", "vendor/terminal-notifier/terminal-notifier.app/Contents/PkgInfo", "vendor/terminal-notifier/terminal-notifier.app/Contents/Resources/en.lproj/Credits.rtf", "vendor/terminal-notifier/terminal-notifier.app/Contents/Resources/en.lproj/InfoPlist.strings", "vendor/terminal-notifier/terminal-notifier.app/Contents/Resources/en.lproj/MainMenu.nib", "vendor/terminal-notifier/terminal-notifier.app/Contents/Resources/Terminal.icns", "README.markdown"]
  s.homepage = %q{https://github.com/alloy/terminal-notifier}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Send User Notifications on Mac OS X 10.8 or higher.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 4

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bacon>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<mocha-on-bacon>, [">= 0"])
    else
      s.add_dependency(%q<bacon>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<mocha-on-bacon>, [">= 0"])
    end
  else
    s.add_dependency(%q<bacon>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<mocha-on-bacon>, [">= 0"])
  end
end

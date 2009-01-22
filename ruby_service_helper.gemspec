# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ruby_service_helper}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Tucker"]
  s.date = %q{2009-01-22}
  s.description = %q{Simple declarative configuration for running ruby programs as win32 services using win32/daemon.}
  s.email = %q{raggi@rubyforge.org}
  s.extra_rdoc_files = ["History.txt", "README.rdoc"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/ruby_service_helper.rb", "spec/.bacon", "spec/helper.rb", "spec/runner", "spec/spec_ruby_service_helper.rb", "tasks/autospec.rake", "tasks/bacon.rake", "tasks/bones.rake", "tasks/gem.rake", "tasks/git.rake", "tasks/manifest.rake", "tasks/notes.rake", "tasks/post_load.rake", "tasks/rdoc.rake", "tasks/rubyforge.rake", "tasks/setup.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/raggi/ruby_service_helper}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{libraggi}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Simple declarative configuration for running ruby programs as win32 services using win32/daemon}
  s.test_files = ["spec/spec_ruby_service_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<win32-service>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<bones>, [">= 0"])
      s.add_development_dependency(%q<bacon>, [">= 0"])
    else
      s.add_dependency(%q<win32-service>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bones>, [">= 0"])
      s.add_dependency(%q<bacon>, [">= 0"])
    end
  else
    s.add_dependency(%q<win32-service>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bones>, [">= 0"])
    s.add_dependency(%q<bacon>, [">= 0"])
  end
end

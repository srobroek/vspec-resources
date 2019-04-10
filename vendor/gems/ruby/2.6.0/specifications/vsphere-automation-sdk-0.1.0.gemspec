# -*- encoding: utf-8 -*-
# stub: vsphere-automation-sdk 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "vsphere-automation-sdk".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["J.R. Garcia".freeze]
  s.date = "2019-01-10"
  s.description = "A Ruby SDK for the vSphere APIs".freeze
  s.email = ["jrg@vmware.com".freeze]
  s.homepage = "https://github.com/vmware/vsphere-automation-sdk-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "A Ruby SDK for the vSphere APIs".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<typhoeus>.freeze, ["~> 1.3"])
      s.add_runtime_dependency(%q<json>.freeze, ["~> 2.1"])
      s.add_runtime_dependency(%q<vsphere-automation-appliance>.freeze, ["~> 0.1"])
      s.add_runtime_dependency(%q<vsphere-automation-cis>.freeze, ["~> 0.1"])
      s.add_runtime_dependency(%q<vsphere-automation-content>.freeze, ["~> 0.1"])
      s.add_runtime_dependency(%q<vsphere-automation-vapi>.freeze, ["~> 0.1"])
      s.add_runtime_dependency(%q<vsphere-automation-vcenter>.freeze, ["~> 0.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.16"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0.11.3"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.3"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.58.2"])
      s.add_development_dependency(%q<vcr>.freeze, ["~> 4.0"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 3.4"])
    else
      s.add_dependency(%q<typhoeus>.freeze, ["~> 1.3"])
      s.add_dependency(%q<json>.freeze, ["~> 2.1"])
      s.add_dependency(%q<vsphere-automation-appliance>.freeze, ["~> 0.1"])
      s.add_dependency(%q<vsphere-automation-cis>.freeze, ["~> 0.1"])
      s.add_dependency(%q<vsphere-automation-content>.freeze, ["~> 0.1"])
      s.add_dependency(%q<vsphere-automation-vapi>.freeze, ["~> 0.1"])
      s.add_dependency(%q<vsphere-automation-vcenter>.freeze, ["~> 0.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
      s.add_dependency(%q<pry>.freeze, ["~> 0.11.3"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.3"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.58.2"])
      s.add_dependency(%q<vcr>.freeze, ["~> 4.0"])
      s.add_dependency(%q<webmock>.freeze, ["~> 3.4"])
    end
  else
    s.add_dependency(%q<typhoeus>.freeze, ["~> 1.3"])
    s.add_dependency(%q<json>.freeze, ["~> 2.1"])
    s.add_dependency(%q<vsphere-automation-appliance>.freeze, ["~> 0.1"])
    s.add_dependency(%q<vsphere-automation-cis>.freeze, ["~> 0.1"])
    s.add_dependency(%q<vsphere-automation-content>.freeze, ["~> 0.1"])
    s.add_dependency(%q<vsphere-automation-vapi>.freeze, ["~> 0.1"])
    s.add_dependency(%q<vsphere-automation-vcenter>.freeze, ["~> 0.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.11.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.3"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.58.2"])
    s.add_dependency(%q<vcr>.freeze, ["~> 4.0"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.4"])
  end
end

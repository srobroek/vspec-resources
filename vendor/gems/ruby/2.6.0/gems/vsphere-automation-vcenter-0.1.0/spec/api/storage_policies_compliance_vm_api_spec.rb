=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::StoragePoliciesComplianceVMApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'StoragePoliciesComplianceVMApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::StoragePoliciesComplianceVMApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StoragePoliciesComplianceVMApi' do
    it 'should create an instance of StoragePoliciesComplianceVMApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::StoragePoliciesComplianceVMApi)
    end
  end

  # unit tests for list
  # Returns compliance information about at most 1000 virtual machines matching the filter VM.FilterSpec. If there are no virtual machines matching the VM.FilterSpec an empty List is returned. Virtual machines without storage policy association are not returned.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filter_status Compliance Status that a virtual machine must have to match the filter. Atleast one status must be specified.
  # @option opts [Array<String>] :filter_vms Identifiers of virtual machines that can match the filter If unset or empty, virtual machines with any identifier matches the filter When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: VirtualMachine.
  # @return [VcenterStoragePoliciesComplianceVMListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

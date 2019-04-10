=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Content::LibraryItemFileApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LibraryItemFileApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Content::LibraryItemFileApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LibraryItemFileApi' do
    it 'should create an instance of LibraryItemFileApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Content::LibraryItemFileApi)
    end
  end

  # unit tests for get
  # Retrieves the information for a single file in a library item by its name.
  # @param library_item_id Identifier of the library item whose file information should be returned.
  # @param content_library_item_file_get 
  # @param [Hash] opts the optional parameters
  # @return [ContentLibraryItemFileResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Lists all of the files that are stored within a given library item.
  # @param library_item_id Identifier of the library item whose files should be listed.
  # @param [Hash] opts the optional parameters
  # @return [ContentLibraryItemFileListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

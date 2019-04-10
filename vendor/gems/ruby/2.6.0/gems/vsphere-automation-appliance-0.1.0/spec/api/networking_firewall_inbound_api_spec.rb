=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::NetworkingFirewallInboundApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NetworkingFirewallInboundApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::NetworkingFirewallInboundApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NetworkingFirewallInboundApi' do
    it 'should create an instance of NetworkingFirewallInboundApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::NetworkingFirewallInboundApi)
    end
  end

  # unit tests for get
  # Get the ordered list of firewall rules. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceNetworkingFirewallInboundResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set
  # Set the ordered list of firewall rules to allow or deny traffic from one or more incoming IP addresses. This overwrites the existing firewall rules and creates a new rule list. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. For example, the list of rules can be as follows: &lt;ol&gt; &lt;li&gt; \&quot;address\&quot;: \&quot;10.112.0.1\&quot;, \&quot;prefix\&quot;: 0, \&quot;interface_name\&quot;: \&quot;*\&quot;,\&quot;policy\&quot;: \&quot;REJECT\&quot;&lt;br&gt; \&quot;address\&quot;: \&quot;10.112.0.1\&quot;, \&quot;prefix\&quot;: 0, \&quot;interface_name\&quot;: \&quot;nic0\&quot;,\&quot;policy\&quot;: \&quot;ACCEPT\&quot;&lt;br&gt; &lt;/li&gt; &lt;/ol&gt; In the above example, the first rule drops all packets originating from 10.112.0.1 and&lt;br&gt; the second rule accepts all packets originating from 10.112.0.1 only on nic0. In effect, the second rule is always ignored which is not desired, hence the order has to be swapped. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
  # @param appliance_networking_firewall_inbound_set 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

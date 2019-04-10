# encoding: utf-8
# copyright: 2018, The Authors

title 'sample section'

# you can also use plain tests


# you add controls here
control 'tmp-1.0' do                        # A unique ID for this control
  impact 0.7                                # The criticality, if this control fails.
  title 'hello'             # A human-readable title
  desc 'An optional description...'
describe vami('vcsa-01.lab.vxsan.com', auth: {user: 'root', pass: 'VMware1!VMware1!'}, ssl_verify: false) do

    it { should exist }
    its('ssh') { should cmp true }
    its('ssodomain') { should cmp "vmware.com"}
  end



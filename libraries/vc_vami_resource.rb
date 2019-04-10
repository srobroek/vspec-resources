
require 'vsphere-automation-appliance'


  class Vami < Inspec.resource(1)
    include Rack::Utils


    configuration = VSphereAutomation::Configuration.new.tap do |c|
      c.host = 'vcsa-01.lab.vxsan.com:5480'
      c.username = 'root'
      c.password = 'VMware1!VMware1!'
      c.scheme = 'https'
      c.verify_ssl = false
      c.verify_ssl_host = false
    end

api_client = VSphereAutomation::ApiClient.new(configuration)
api_client.default_headers['Authorization'] = configuration.basic_auth_token
session_api = VSphereAutomation::CIS::SessionApi.new(api_client)
session_id = session_api.create('').value
api_client.default_headers['vmware-api-session-id'] = session_id
api_instance = VSphereAutomation::Appliance::AccessConsolecliApi.new(api_client)

require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::AccessConsolecliApi.new

begin
  #Get enabled state of the console-based controlled CLI (TTY1).
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessConsolecliApi->get: #{e}"
end

    
    name 'vami'
    supports platform: 'unix'
    desc 'Use the vShere VAMI audit resource to get information from the VAMI API'
    example <<~EXAMPLE
      describe vami('host', auth: {user: 'user', pass: 'test'}, params: {ssl_verify: false, vamiport: 5480 }) do
        its('ssh') { should cmp true }
        its('ssodomain') { should cmp 'lab.vxsan.com' }
      endc
    EXAMPLE

    def initialize(host, opts = {})
      @host = host
      @opts = opts

      @vamiport = @opts.fetch(:vamiport, '5480')
      @sslverify = @opts.fetch(:ssl_verify, false)
      @user = @opts.fetch(:auth, {})[:user]
      @password = @opts.fetch(:auth, {})[:pass]

      
    
    end

    def ssh
      @path = '/rest/appliance/access/ssh'
      @url = "https://#{@host}:#{@vamiport}#{@path}"
      @method = 'GET'
      @response = response

      
      return "unauthenticated" if @response.status ==403

      return @response




    end
    
    def response
    #  return @response if response
            puts @url
      @body = http(

        @url,
        method: @method,
        ssl_verify: @sslverify,
        auth: {
           user: 'root',
           pass: 'VMware1!VMware1!' 
         }
      )

      if @body.status != 200
        raise Inspec::Exceptions::ResourceSkipped,
          "failed to authenticate to resource, status code #{@body.status}"
      end


      @json = json({ content: @body.body})
      return @json
    end

    def exists?
      true
    end
    
      # Expose all parameters
    def method_missing(name)
      @params[name.to_s]
    end
  end









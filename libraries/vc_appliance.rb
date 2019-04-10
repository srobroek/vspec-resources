
$LOAD_PATH.unshift(*Dir[File.expand_path('../../vendor/gems/**/lib', __FILE__)])

require 'vsphere-automation-appliance'
require 'vsphere-automation-cis'


  class VCSA < Inspec.resource(1)

    name 'vcsa'
    supports platform: 'unix'
    desc 'Use the VCSA audit resource to get information from the vSphere API'
    example <<~EXAMPLE
      describe vcsa('host', auth: {user: 'user', pass: 'test'}, params: {ssl_verify: false, vamiport: 5480 }) do
        its('ssh') { should cmp true }
        its('ssodomain') { should cmp 'lab.vxsan.com' }
      end
    EXAMPLE

    

    def initialize(host, opts = {})
      @opts = opts

      #@host = "#{host}:#{@opts.fetch(:vamiport, '5480')}"
      configuration = VSphereAutomation::Configuration.new.tap do |c|
        c.host = 'vcsa-01.lab.vxsan.com:5480'
        c.username = @opts.fetch(:auth, {})[:user]
        c.password = @opts.fetch(:auth, {})[:pass]
        c.scheme = 'https'
        c.verify_ssl = @opts.fetch(:ssl_verify, true)
        c.verify_ssl_host = @opts.fetch(:ssl_verify, true)
      end

      api_client = VSphereAutomation::ApiClient.new(configuration)
      api_client.default_headers['Authorization'] = configuration.basic_auth_token
      session_api = VSphereAutomation::CIS::SessionApi.new(api_client)
      session_id = session_api.create('').value || 
      api_client.default_headers['vmware-api-session-id'] = session_id
    end




    # begin
    #   #Get enabled state of the console-based controlled CLI (TTY1).
    #   result = api_instance.get
    #   p result
    # rescue VSphereAutomation::ApiError => e
    #   puts "Exception when calling AccessConsolecliApi->get: #{e}"
    # end


  

    # def ssh

    #   api_instance = VSphereAutomation::Appliance::AccessConsolecliApi.new(api_client)
    #   result = api_instance.get

    #   return result

      
    #   return "unauthenticated" if @response.status ==403

    #   return @response




    # end
    
    # def response
    # #  return @response if response
    #         puts @url
    #   @body = http(

    #     @url,
    #     method: @method,
    #     ssl_verify: @sslverify,
    #     auth: {
    #        user: 'root',
    #        pass: 'VMware1!VMware1!' 
    #      }
    #   )

    #   if @body.status != 200
    #     raise Inspec::Exceptions::ResourceSkipped,
    #       "failed to authenticate to resource, status code #{@body.status}"
    #   end


    #   @json = json({ content: @body.body})
    #   return @json
    # end

    def exists?
      true
    end
    
      # Expose all parameters
    def method_missing(name)
      @params[name.to_s]
    end
  end









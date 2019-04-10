class GordonConfig < Inspec.resource(1)
    name 'gordon_config'
  
    # Restrict to only run on the below platforms (if none were given, all OS's supported)
    supports platform_family: 'darwin'
    supports platform: 'centos', release: '6.9'
    # Supports `*` for wildcard matcher in the release
    supports platform: 'centos', release: '7.*'
  
    desc '
      Resource description ...
    '
  
    example '
      describe gordon_config do
        its("signal") { should eq "on" }
      end
    '
  
    # Load the configuration file on initialization
    def initialize(path = nil)
      @path = path || '/etc/gordon.conf'
      @params = SimpleConfig.new( read_content )
    end
  
    # Expose all parameters of the configuration file.
    def method_missing(name)
      @params[name]
    end
  
    private
  
    def read_content
      f = inspec.file(@path)
      # Test if the path exist and that it's a file
      if f.file?
        # Retrieve the file's contents
        f.content
      else
        # If the file doesn't exist, skip all tests that use gordon_config
        raise Inspec::Exceptions::ResourceSkipped, "Can't read config at #{@path}"
      end
    end
  end
module Onecloud
  # Datacenter
  module DC
    def datacenters
      get('dcLocation')
    end
  end
end

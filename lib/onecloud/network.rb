module Onecloud
  # Private networks
  module PrivateNetwork
    # List of all networks
    def private_networks
      get('network')
    end

    # Private network by ID
    def private_network_by_id(id)
      get("network/#{id}")
    end

    # Create new private network
    # Params:
    # - Name String       - User-defined network name
    # - IsDHCP Bool
    #     - true  - creates network with DHCP server
    #     - false - creates network without DHCP server
    # - DCLocation String - datacenter location
    def private_network_create(params)
      post('network', params)
    end

    # Remove network by ID
    def private_network_remove(id)
      delete("network/#{id}")
    end
  end

  # Public networks
  module PublicNetwork
    # Create new public network
    # Params:
    # - NetworkCapacity String - Network capacity (may be: Network29)
    # - Name String      - User-defined network name
    # - Bandwidth Number - (optional) 10-1000 (Mbit/s);
    #                      step 10 (Mbit/s); default value: 10
    # - DCLocation       - datacenter location
    def public_network_create(params)
      post('publicnetwork', params)
    end

    # Get public network by ID
    def public_network_by_id(id)
      get("publicnetwork/#{id}")
    end

    # Update public network
    def public_network_update(id, params)
      put("publicnetwork/#{id}", params)
    end

    # Get all public networks
    def public_networks
      get('publicnetwork')
    end

    # Remove public network
    def public_network_remove(id)
      delete("publicnetwork/#{id}")
    end
  end
end

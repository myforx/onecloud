module Onecloud
  # Operations with DNS
  module DNS # TODO: Rename to 'Domains'
    # Get record by ID
    def dns_by_id(record_id)
      get("dns/record/#{record_id}")
    end

    def domain_by_id(domain_id)
      get("dns/#{domain_id}")
    end

    # Update CNAME record
    def dns_update_cname(record_id, params)
      put("dns/recordname/#{record_id}", params)
    end

    # Update MX record
    def dns_update_mx(record_id, params)
      put("dns/recordmx/#{record_id}", params)
    end

    # Update NS record
    def dns_update_ns(record_id, params)
      put("dns/recordns/#{record_id}", params)
    end

    # Update SRV record
    def dns_update_srv(record_id, params)
      put("dns/recordsrc/#{record_id}", params)
    end

    # Update TXT record
    def dns_update_txt(record_id, params)
      put("dns/recordtxt/#{record_id}", params)
    end

    # Update A record
    def dns_update_a(record_id, params)
      put("dns/recorda/#{record_id}", params)
    end

    # Update AAAA record
    def dns_update_aaaa(record_id, params)
      put("dns/recordaaaa/#{record_id}", params)
    end

    # Create CNAME record
    def dns_create_cname(params)
      post('dns/recordcname', params)
    end

    # Create MX record
    def dns_create_mx(params)
      post('dns/recordmx', params)
    end

    # Create NS record
    def dns_create_ns(params)
      post('dns/recordns', params)
    end

    # Create SRV record
    def dns_create_srv(params)
      post('dns/recordsrc', params)
    end

    # Create TXT record
    def dns_create_txt(params)
      post('dns/recordtxt', params)
    end

    # Create A record
    def dns_create_a(params)
      post('dns/recorda', params)
    end

    # Create AAAA record
    def dns_create_aaaa(params)
      post('dns/recordaaaa', params)
    end

    # Create new domain
    def add_domain(params)
      post('dns', params)
    end

    # List of all domains
    def domains
      get('dns') # TODO: alias: all_dns, dns, dns_list
    end

    # Delete domain by ID
    def remove_domain(domain_id)
      delete("dns/#{domain_id}")
    end

    # Remove record for domain by ID
    def remove_domain_record(domain_id, record_id)
      delete("dns/#{domain_id}/#{record_id}")
    end
  end
end

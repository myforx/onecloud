module Onecloud
  # Work with SSL certificates
  module SSL
    # Add new domain to exists cert
    # Params:
    # - SanDomains list - List of domains for adding
    # - CreateCnameRecord bool - (optional) Create or not CNAME-record
    #   If domain delegated to 1cloud DNS and validation method is DNS
    def ssl_add_domain_to_cert(domain_id, params)
      put("ssl/#{domain_id}/addsan", params)
    end

    # Load SSL key content
    # key_id - Integer
    # type - String { ca | crt | csr | private-key | pfx }
    def ssl_files_by_cert_id(cert_id, type)
      get("ssl/#{cert_id}/file/#{type}")
    end

    # Ordering a new certificate
    def ssl_new(params)
      post('ssl', params)
    end

    # Change certificate status
    # Params:
    # - Enabled bool - or false
    #     true  - automatic renewal is on
    #     false - automatic renewal is off
    def ssl_change_renewal_status(cert_id, params)
      put("ssl/#{cert_id}", params)
    end

    # Available cert?
    def ssl_product_info(cert_id)
      get("ssl/products/#{cert_id}")
    end

    # Operations with exists cert
    # Params:
    # - Type String - Actions:
    #     "prolong"     - manual renewal
    #     "resumeorder"
    #     "revalidate"  - retry validation procedure
    #     "cancel"      - cancel order
    def ssl_action_with_cert(cert_id, params)
      post("ssl/#{cert_id}/action", params)
    end

    # Get cert validation status
    def ssl_cert_validation_status(cert_id)
      get("ssl/#{cert_id}/checkdcv")
    end

    # Cert info
    def ssl_cert_by_id(cert_id)
      get("ssl/#{cert_id}")
    end

    # List all certificates
    def ssl_list
      get('ssl')
    end

    # Certs available for ordering
    def ssl_certs_available_for_ordering
      get('ssl/products')
    end

    # Remove certificate by his ID
    def ssl_remove_cert(cert_id)
      delete("ssl/#{cert_id}")
    end
  end
end

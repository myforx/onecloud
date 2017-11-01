module Onecloud
  # Work with SSL certificates
  module SSL
    # Add new domain to exists cert
    # Params:
    # - SanDomains list - List of domains for adding
    # - CreateCnameRecord bool - (optional) Create or not CNAME-record
    #   If domain delegated to 1cloud DNS and validation method is DNS
    def add_domain(domain_id, params)
      put("ssl/{domain_id}/addsan", params)
    end

    # Load SSL key content
    # key_id - Integer
    # type - String { ca | crt | csr | private-key | pfx }
    def get(cert_id, type)
      get("/ssl/{cert_id}/file/{type}")
    end

    # Ordering a new certificate
    def order_new(params)
      post('ssl', params)
    end

    # Change certificate status
    # Params:
    # - Enabled bool - or false
    #     true  - automatic renewal is on
    #     false - automatic renewal is off
    def change_renewal_status(cert_id, params)
      put("ssl/{cert_id}")
    end

    # Available cert?
    def product_info(cert_id)
      get("ssl/products/{cert_id}")
    end

    # Operations with exists cert
    # Params:
    # - Type String - Actions:
    #     "prolong"     - manual renewal
    #     "resumeorder"
    #     "revalidate"  - retry validation procedure
    #     "cancel"      - cancel order
    def action_with(cert_id, params)
      post("ssl/{cert_id}/action")
    end

    # Get cert validation status
    def validation_status(cert_id)
      get("ssl/{cert_id}/checkdcv")
    end

    # Cert info
    def info(cert_id)
      get("ssl/{cert_id}")
    end

    # List all certificates
    def list
      get('ssl')
    end

    # Certs available for ordering
    def available_for_ordering()
      get('ssl/products')
    end

    # Remove certificate by his ID
    def remove(cert_id)
      delete("ssl/{cert_id}")
    end
  end
end

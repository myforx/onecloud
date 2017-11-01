module Onecloud
  # Work with SSH keys
  module SSH
    # Add new ssh key
    # Params:
    # - Title     String - SSH key name
    # - PublicKey String
    def add(params)
      post('sshkey', params)
    end

    # Get SSH key by his ID
    def get(key_id)
      get("sshkey/{key_id}")
    end

    # List all SSH keys
    def all
      get('sshkey')
    end

    # Remove key by ID
    def remove(key_id)
      delete("sshkey/{key_id}")
    end
  end
end

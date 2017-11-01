module Onecloud
  # Server methods
  module Server
    # System actions with server by ID
    # TODO: separate actions by name (eg. server_reload(id), server_poweroff)
    def server_do_action(server_id, params)
      post("server/#{server_id}/action", params)
    end

    # The action on the server
    def server_apply_action(server_id, action_id)
      get("server/#{server_id}/action/#{action_id}")
    end

    # Update server configuration
    def server_update(server_id, params)
      put("server/#{server_id}", params)
    end

    # Copy server
    def server_copy(server_id)
      post("server/#{server_id}/copy")
    end

    # Rebuild server
    def server_rebuild(server_id, params)
      post("server/#{server_id}/rebuild", params)
    end

    # Get server by ID
    def server_by_id(server_id)
      get("server/#{server_id}")
    end

    # Create new server
    def server_create(params)
      post('server', params)
    end

    # All previous actions on the server
    def server_actions(server_id)
      get("server/#{server_id}/action")
    end

    # List of all servers
    def servers
      get('server')
    end

    # Remove server by ID
    def server_remove(server_id)
      delete("server/#{server_id}")
    end
  end
end

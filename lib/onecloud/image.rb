module Onecloud
  # Server Images (templates)
  module Image
    # Get list of all available templates
    def server_templates
      get('image')
    end

    # Create new Image (template)
    # +Name+::string
    # +TechName+::string
    # +ServerID+::number
    def server_template_create(params)
      post('image', params)
    end

    # Delete Image
    def server_template_remove(id)
      delete("image/#{id}")
    end
  end
end

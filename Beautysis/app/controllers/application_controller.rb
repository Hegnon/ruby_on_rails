class ApplicationController < ActionController::Base
    
    skip_before_action :verify_authenticity_token, only: [:cep]
    
      

    def cep
        render file: Rails.root.join("app", "assets", "javascripts", "cep.js"), layout: false, content_type: "application/javascript"
      end
end

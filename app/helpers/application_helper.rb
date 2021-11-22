module ApplicationHelper

    def resource_name
        :user
    end
    
    def resource
        @resource ||= User.new
    end
    
    def devise_mapping
        @devise_mapping ||= Devise.mappings[:user]
    end

    def flash_class(level)
        bootstrap_alert_class = {
          "success" => "alert-success",
          "error" => "alert-danger",
          "notice" => "alert-info",
          "alert" => "alert-danger",
          "warn" => "alert-warning"
        }
        
        bootstrap_alert_class[level]
      end

end

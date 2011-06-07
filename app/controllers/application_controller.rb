class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource

  def after_sign_in_path_for(resource)
    stored_location_for(:user) || root_path
  end

  protected

    def layout_by_resource
      if devise_controller?
        "devise"
      else
        "application"
      end
    end
end

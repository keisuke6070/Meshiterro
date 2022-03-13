class ApplicationController < ActionController::Base
  before_action :authenticate_user!,expect: [:top]
  before_action :configue_permitted_parameters,if: :devise_controller?

  def after_sign_in_path_for(resource)
      post_images_path
  end

  def after_sign_out_path_for(resource)
      about_path
  end

  protected

  def
   configue_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up,keys: [:name])
  end
end
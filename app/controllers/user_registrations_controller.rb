# Overrides devise's registration controller for some individualizations.
class UserRegistrationsController < Devise::RegistrationsController


  protected

  # Override devise's update_resource method to allow
  # updates for insensitive attributes without the current
  # password.
  def update_resource resource, params
    if params[:password].nil? && (params[:email].nil? || params[:email] == resource.email)
      resource.update_without_password(params)
    else
      resource.update_with_password(params)
    end
  end
end

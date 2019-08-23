class RegistrationsController < Devise::RegistrationsController

  protected

  def after_sign_up_path_for(user)
     new_user_child_url(user)
  end

end

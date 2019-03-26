class RegistrationsController < Devise::RegistrationsController
  def new
    build_resource
    yield resource if block_given?
    respond_with resource
  end

  def create
    build_resource(sign_up_params)
    # profeProfessor.new
    prof = Professor.new
    prof.name = resource.email
    prof.email = resource.email
    prof.save
    resource.professor = prof
    resource.save
    yield resource if block_given?
    if resource.persisted? && prof.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end

  private
  def sign_up_params
    params.require(:user).permit(:email, :password, :admin, :password_confirmation) # list every parameter you'd like to register with
  end
end

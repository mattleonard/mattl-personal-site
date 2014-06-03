class RegistrationsController < Devise::RegistrationsController
  def new
    flash[:info] = 'Sorry registrations are not allowed'
    redirect_to root_path
  end

  def create
    flash[:info] = 'Sorry registrations are not allowed'
    redirect_to root_path
  end
end
class ApplicationAdminController < ApplicationSignedInController
  before_action :redirect_if_not_allowed
    
    
  private
    
  def redirect_if_not_allowed
    if !current_user.admin?
      flash[:warning] = 'You are not allowed. Please log in as an admin.'  
      redirect_to login_path
    end
  end
end
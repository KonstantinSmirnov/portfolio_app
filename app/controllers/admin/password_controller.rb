class Admin::PasswordController < ApplicationAdminController
  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)

    respond_to do |format|
      if @user.update_attributes(password_param)
        format.html {
          flash[:success] = "Password was successfully changed."
          redirect_to admin_change_password_path
        }
      else
        format.html {
          flash[:danger] = "Password was not updated."
          render :edit
        }
      end

    end
  end

  private

  def password_param
    params.require(:user).permit(:password, :password_confirmation)
  end
end

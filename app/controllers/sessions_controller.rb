class SessionsController < ApplicationController
    def new
        
    end
    
    def create
        if login(params[:email], params[:password])
            flash[:success] = 'Welcome back.'
            redirect_to root_path
        else
            flash[:warning] = 'Login unsuccessfull.'
            redirect_to login_path
        end
    end
    
    def destroy
        logout
        flash[:success] = 'See you later!'
        redirect_to root_path
    end
end
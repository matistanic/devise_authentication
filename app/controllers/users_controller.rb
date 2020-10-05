 class UsersController < ApplicationController
    def show
    end

    def dashboard
        @users = User.all
    end

    def make_admin
        user = User.find params[:id]
        user.update( :admin => true )
        redirect_to dashboard_users_path(current_user)
    end

    def delete_admin
        user = User.find params[:id]
        user.update( :admin => nil )
        redirect_to dashboard_users_path(current_user)
    end
end
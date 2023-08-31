class AdminController < ApplicationController
    before_action :require_admin, only: [:dashboard]
    
    def dashboard
      @users = User.all
      @todo_lists = TodoList.all
    end
    
    private
    
    def require_admin
      unless current_user&.admin?
        redirect_to root_path, alert: "Access denied."
      end
    end
  end
  
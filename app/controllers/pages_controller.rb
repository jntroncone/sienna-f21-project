class PagesController < ApplicationController
    before_action :authenticate_user!
    # def login
    #     render '/devise/sessions/new'
    # end
    
    def home
        @user = User.all
        @posts = Post.all.order(created_at: :desc)
        render :home
    end

    
end
class PagesController < ApplicationController
    before_action :authenticate_user!
    # def login
    #     render '/devise/sessions/new'
    # end
    
    def home
        render :home
        @posts = Post.order(created_at: :desc)

    end

    
end
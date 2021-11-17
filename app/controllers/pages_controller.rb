class PagesController < ApplicationController
    before_action :authenticate_user!
    # def login
    #     render '/devise/sessions/new'
    # end
    
    def home
        render :home
    end
end
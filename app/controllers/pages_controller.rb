class PagesController < ApplicationController
    def login
        render '/devise/sessions/new'
    end

    
end

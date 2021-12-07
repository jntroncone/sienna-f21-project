class SearchController < ApplicationController
  def index
    if params[:query]
      @users = User.where("email LIKE ? ", "%#{params[:query]}%")
    else
      @users = User.all
  end
end
end

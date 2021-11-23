class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @posts = current_user.posts.order(updated_at: :desc)

    end
    def edit
        @user = User.find(params[:id])
    end
    def update
        current_user.update(params.require(:user).permit(:name, :bio))
        redirect_to current_user
      end
end

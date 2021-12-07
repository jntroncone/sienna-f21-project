class PostsController < ApplicationController
    def create
        @post = Post.create(params.require(:post).permit(:caption, :image, :user_id))
        if @post.save
            flash[:success] = "Post made"
            redirect_to root_path
        else
            flash.now[:error] = "No file attatched"
            render :new
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def destroy
        @post = current_user.posts.find(params[:id])
        @post.destroy
        redirect_to user_path(current_user)
    end
end
 





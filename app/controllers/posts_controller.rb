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
end
 





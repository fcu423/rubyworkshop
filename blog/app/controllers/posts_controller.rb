class PostsController < ApplicationController
    def index
        @posts = Post.all

        if params[:created] == "created"
            @message = "New post created successfully! =]"
        end
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.new(post_params)
        post.save
        redirect_to action: "index", created: "created"
    end

    private 
        def post_params
            params.require(:post).permit(:title, :body)
        end
end
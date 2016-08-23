class PostsController < ApplicationController
    def index
        @posts = Post.all        
    end

    def new
        @post = Post.new
    end

    def show
        @post = Post.find(params[:id])
    end

    def destroy
        
    end

    def create
        @post = Post.new(post_params)
        if post.save
            flash[:notice] = "Post created!"
        end        
        redirect_to :index unless request.xhr?
    end

    private 
        def post_params
            params.require(:post).permit(:title, :body)
        end
end
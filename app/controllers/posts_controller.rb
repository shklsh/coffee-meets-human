class PostsController < ApplicationController
    
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        if not current_user
            redirect_to '/login' and return
        end
        @post = Post.new
    end

    def create
        
        post_params = params.require(:post).permit(:name, :city, :objective)
        # render plain: params[:post].inspect
        @post = Post.new(post_params)
        # @post.user_id = current_user.id
        
        if @post.save
            redirect_to @post
        else
            render 'new'
        end
    end
    
    def edit
        @post = Post.find(params[:id])
    end 

    def update

        post_params = params.require(:post).permit(:name, :city, :objective)

        @post = Post.find(params[:id])
 
        if @post.update(post_params)
            redirect_to @post
        else
            render 'edit'
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end

    # Strong params: create a whitelist of permitted parameters
    # def post_params
    #     params.require(:post).permit(:name, :city, :objective)
    # end
end

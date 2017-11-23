class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]

    def index 
        @posts = Post.all.order("points DESC")
    end

    def show 
        
    end

    def new
        @post = current_user.posts.build
    end 

    def create 
        @post = current_user.posts.build(post_params)

        if @post.save
            redirect_to root_path
        else
            render 'new'
        end 
    end

    def edit
    end

    def update
        if @post.update(post_params)
            redirect_to post_path(@post)
        else
            render 'edit'
        end
    end

    def destroy
        @post.destroy
        redirect_to root_path
    end

    def upvote 
        @post = Post.find(params[:post_id])
        
        @vote = @post.votes.build
        @vote.user_id = current_user.id
        @vote.voteType = true
        @vote.save

        @post.points = @post.votes.where(voteType: "true").count -  @post.votes.where(voteType: "false").count
        @post.save

        redirect_to root_path
    end

    def downvote 
        @post = Post.find(params[:post_id])

        @vote = @post.votes.build
        @vote.user_id = current_user.id
        @vote.voteType = false
        @vote.save

        @post.points = @post.votes.where(voteType: "true").count -  @post.votes.where(voteType: "false").count
        @post.save

        redirect_to root_path
    end

    private 
        def post_params
            params.require(:post).permit(:title, :body,)
        end

        def find_post
            @post = Post.find(params[:id])
        end
end

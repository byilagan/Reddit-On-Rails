class CommentsController < ApplicationController
    before_action :find_post 

    def new 
        @comment = Comment.new
    end 

    def create 
        @comment = @post.comments.build(comment_params)
        @comment.user_id = current_user.id
        @comment.save
        redirect_to post_path(@post)
    end 

     def upvote 
        @comment = Comment.find(params[:comment_id])
        @vote = @comment.votes.build
        @vote.user_id = current_user.id
        @vote.voteType = true
        @vote.save

        @comment.points = @comment.votes.where(voteType: "true").count -  @comment.votes.where(voteType: "false").count
        @comment.save

        redirect_to post_path(@post)
    end

    def downvote 
        @comment = Comment.find(params[:comment_id])
        @vote = @comment.votes.build
        @vote.user_id = current_user.id
        @vote.voteType = false
        @vote.save

        @comment.points = @comment.votes.where(voteType: "true").count -  @comment.votes.where(voteType: "false").count
        @comment.save

        redirect_to post_path(@post)
    end
    
    private
        def comment_params 
            params.require(:comment).permit(:body)
        end 

        def find_post
            @post = Post.find(params[:post_id])
        end
end

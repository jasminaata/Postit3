class CommentsController < ApplicationController

    before_filter :get_post
    before_filter :require_login, only: [:create]
    def get_post
        @post = Post.find(params[:post_id])
    end

    def index
        @comments = @post.comments
    end

    def create
        @comment = Comment.new(params[:comment])
        @comment.user_id = current_user.id
        @comment.post_id = @post.id
    
        respond_to do |format|
            if @comment.save
                format.html {redirect_to post_comments_path(@post), notice: "Comment created!" }
            else
                format.html {redirect_to post_comments_path(@post), notice: "Comment not created!" }
            end
        end
    end
end

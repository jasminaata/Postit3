class VotesController < ApplicationController
    before_filter :require_login

    def create
        @post = Post.find(params[:post_id])
        if params[:direction] == 'up'
            @vote = @post.votes.new(vote: true)
            msg = "Upvoted on #{@post.title}"
        else
            @vote = @post.votes.new(vote: false)
            msg = "Downvoted on #{@post.title}"
        end
        @vote.user_id = current_user.id
        @vote.save

        respond_to do |format|
            format.html {redirect_to posts_path, notice: msg}
            format.js
        end
    end
end

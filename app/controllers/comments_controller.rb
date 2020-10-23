class CommentsController < ApplicationController
    def create
        @comment = Comment.new(
            title: params[:comment][:title], 
            content: params[:comment][:title],
            blog_id: params[:blog_id]
        )
        @comment.save!
        redirect_to blog_path(params[:blog_id])
    end
end

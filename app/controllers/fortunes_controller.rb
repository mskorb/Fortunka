class FortunesController < ApplicationController
 def index
  @fts=Fortune.order(:id).page(params[:page]).per(5)
 end
 
 def edit
	@ft=Fortune.find(params[:id])
 end 

 def update
	@ft = Fortune.find(params[:id])
	@ft.update_attributes(params[:fortune])
	
 end

 def create
 	@ft=Fortune.new(params[:fortune])
	@ft.save
 end	

 def new
 	@ft = Fortune.new
 end

 def show
	@ft=Fortune.find(params[:id])
 end
 
 def info
 end
 
 def add_comment
  commentable_type = params[:commentable][:commentable]
  commentable_id = params[:commentable][:commentable_id]
  # Get the object that you want to comment
  commentable = Comment.find_commentable(commentable_type, commentable_id)

  # Create a comment with the user submitted content
  comment = Comment.new(params[:comment])
  # Assign this comment to the logged in user
  comment.user_id = session[:user].id

  # Add the comment
  commentable.comments << comment

  redirect_to :action => commentable_type.downcase,
    :id => commentable_id
end

end

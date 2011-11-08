class CommentsController < ApplicationController
  before_filter do
    @ft = Fortune.find(params[:fortune_id])
  end

  def create
    @comment = @ft.comments.build(params[:comment])
    @comment.save
    respond_with(@ft, @comment, :location => @ft)
  end

  def destroy
    @comment = @ft.comments.find(params[:id])
    @comment.destroy
    respond_with(@ft, @comment, :location => @ft)
  end
  
  def edit
  @comment = @ft.comments.find(params[:id])
end

def update
  @comment = @ft.comments.find(params[:id])
  @comment.update_attributes(params[:comment])
  respond_with(@ft, @comment, :location => @ft)
end

end
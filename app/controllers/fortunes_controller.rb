class FortunesController < ApplicationController
 def index
  @fts=Fortune.order(:id).page(params[:page]).per(5)
  @comment = Comment.new
  #
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
 

end

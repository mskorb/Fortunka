class FriendsController < ApplicationController
  # GET /friends
  # GET /friends.xml
  def index
    @friends = Friend.all
    respond_with(@friends)
  end

  # GET /friends/1
  # GET /friends/1.xml
  def show
    @friend = Friend.find(params[:id])
    respond_with(@friend)
  end

  # GET /friends/new
  # GET /friends/new.xml
  def new
    @friend = Friend.new
    respond_with(@friend)
  end

  # GET /friends/1/edit
  def edit
    @friend = Friend.find(params[:id])
  end

  # POST /friends
  # POST /friends.xml
  def create
    @friend = Friend.new(params[:friend])
    flash[:notice] = 'Friend was successfully created.' if @friend.save
    respond_with(@friend)
  end

  # PUT /friends/1
  # PUT /friends/1.xml
  def update
    @friend = Friend.find(params[:id])
    flash[:notice] = 'Friend was successfully updated.' if @friend.update_attributes(params[:friend])
    respond_with(@friend)
  end

  # DELETE /friends/1
  # DELETE /friends/1.xml
  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    respond_with(@friend)
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery
end

class Post < ActiveRecord::Base
  acts_as_commentable
end
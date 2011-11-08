require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery
end

class Post < ActiveRecord::Base
  acts_as_commentable
end
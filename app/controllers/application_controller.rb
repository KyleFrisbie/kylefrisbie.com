class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!, except: [ :index, :show, :about ]
  protect_from_forgery with: :exception

  def tags
    @tags = Tag.all
  end
  helper_method :tags

  def posts
    @posts = Post.all.order('date_posted DESC').take(5)
  end
  helper_method :posts
end

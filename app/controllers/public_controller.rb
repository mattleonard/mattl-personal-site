class PublicController < ApplicationController
  def blog
    @posts = Post.all
  end
  def about_me; end
  def portfolio; end
  def contact; end
end
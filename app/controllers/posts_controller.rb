class PostsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only:
  :dashboard

  def index
    @posts = Post.order_by
  end

  def dashboard
  end

  def create
    @post = Post.new(title: params[:title], image: params[:image], content: params[:content])
    @post.content = params[:content].gsub('spoiler', '')
    @post.save
  end
end

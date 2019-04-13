class PostController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def detail
    id = params[:id]
    @post = Post.find_by(id: id)
  end

  def create
    text = params[:text]
    Post.new(text: text).save
    redirect_to("/posts")
  end

  def edit
    id = params[:id]
    @post = Post.find_by(id: id)
  end

  def update
    id = params[:id]
    text = params[:text]
    post = Post.find_by(id: id)
    post.text = text
    post.save
    redirect_to("/post/#{ id }")
  end

  def delete
    id = params[:id]
    Post.find_by(id: id).destroy
    redirect_to("/posts")
  end
end

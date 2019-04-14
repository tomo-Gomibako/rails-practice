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
    post = Post.new(text: text)
    if post.save
      flash[:status] = ["success", "投稿されました！"]
    else
      flash[:status] = ["failed", "投稿に失敗しました"]
    end
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
    if post.save
      redirect_to("/post/#{ id }")
    end
  end

  def delete
    id = params[:id]
    Post.find_by(id: id).destroy
    redirect_to("/posts")
  end
end

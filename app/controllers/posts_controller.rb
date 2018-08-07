# frozen_string_literal: true

class PostsController < ApplicationController
  def show
    @post = current_post
  end

  def new
    @post = Post.new
  end

  def edit
    @post = current_post
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def update
    @post = current_post

    @post.update(post_params)
    if @post.valid?
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

private

  def post_params
    params.permit(:title, :category, :content)
  end

  def current_post
    Post.find(params[:id])
  end
end

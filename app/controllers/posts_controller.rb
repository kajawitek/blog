# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_author!

  def index
    render :index, locals: { posts: Post.all.includes(:author) }
  end

  def new
    render :new, locals: { post: Post.new }
  end

  def create
    post = Post.new(post_params)
    post.author = current_author
    post.published_at = Time.zone.now

    if post.save
      redirect_to post_path(post), notice: 'Post was successfully created.'
    else
      render :new, locals: { post: post }, status: :unprocessable_entity
    end
  end

  def show
    render :show, locals: { post: post }
  end

  def edit
    authorize post
    render :edit, locals: { post: post }
  end

  def update
    authorize post
    if post.update(post_params)
      redirect_to post_path, notice: 'Post was successfully updated.'
    else
      render :edit, locals: { post: post }, status: :unprocessable_entity
    end
  end

  def destroy
    authorize post
    post.destroy
    redirect_to posts_path, notice: 'Post was successfully destroyed.'
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :author)
  end

  def post
    @post ||= Post.find(params[:id])
  end
end

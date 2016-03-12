class SinController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    if params[:tag]
      @posts = Post.tagged_with(params[:tag]).order("CREATED_AT DESC")
    else
      @posts = Post.all.order("CREATED_AT DESC")
    end

    render layout: 'post'
  end

  def show
    respond_with(@post)
  end

  def new
    @post = Post.new
    load_image_set
    respond_with(@post)
  end

  def edit
    load_image_set

    render layout: 'post'
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    load_image_set
    @post.save
    redirect_to sin_index_path
  end

  def update
    @post.update(post_params)
    redirect_to sin_index_path
  end

  def destroy
    @post.destroy
    redirect_to sin_index_path
  end




  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :user, :contents, :file, :file_cache, :state, :tag_list)
  end

  def load_image_set
    @image_asset = ImageAsset.all.order("CREATED_AT DESC")
  end
end

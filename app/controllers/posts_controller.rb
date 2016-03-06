class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [ :index, :show ]

  respond_to :html

  def index
    if params[:tag]
      @posts = Post.tagged_with(params[:tag]).order("CREATED_AT DESC")
    else
      @posts = Post.all.order("CREATED_AT DESC")
    end
  end

  def show
    @post.view_count += 1
    @post.save

    respond_with(@post)
  end

  def new
    @post = Post.new
    load_image_set
    respond_with(@post)
  end

  def edit
    load_image_set
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    load_image_set
    @post.save
    respond_with(@post)
  end

  def update
    @post.update(post_params)
    respond_with(@post)
  end

  def destroy
    @post.destroy
    respond_with(@post)
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :user, :contents, :file, :file_cache, :state, :tag_list, :view_count)
    end

    def load_image_set
      @image_asset = ImageAsset.all.order("CREATED_AT DESC")
    end
end

class HomeController < PostsController
  before_action :set_post, only: [:show]

  respond_to :html

  def index
    @top_banner = ImageAsset.where(slug: "main_top_banner").first

    if params[:tag]
      @posts = Post.tagged_with(params[:tag]).order("CREATED_AT DESC")
    else
      @posts = Post.all.order("CREATED_AT DESC")
    end
  end

  def show
    respond_with(@post)
  end
end

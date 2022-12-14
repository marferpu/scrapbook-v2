class PostsController < ApplicationController
  before_action :set_post, except: %i[index new create]

  def index
    if params[:query].present?
      @posts = Post.global_search(params[:query])
    else
      if current_user.admin_role?
        @posts = Post.all
      else
        @posts = current_user.posts
      end
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    # @post = Post.new(post_params)
    @post = current_user.posts.create(post_params)
    if @post.save!
      redirect_to posts_path, notice: "Post guardado exitosamente"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path, notice: "Actualización exitosa"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: "Eliminación exitosa", status: :see_other
  end

  private

  def post_params
    params.require(:post).permit(:title, :type_activity, :description, :date, :content, :grade_id, :subject_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end

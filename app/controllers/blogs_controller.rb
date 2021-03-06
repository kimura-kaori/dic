class BlogsController < ApplicationController
  before_action :set_blog, only: %i[ show edit update destroy ]
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blog_path(@blog.id), notice:"保存しました"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice:"保存しました"
    else
      render :new
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice: "削除しました"
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit %i( title content )
  end

end

class Api::V1::BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    if @blogs
      render json: { status: "SUCCESS", message: "Blogs available", data: @blogs }, status: :ok
    else
      render json: @blogs.errors, status: :bad_request
    end
  end

  def create
    blog = Blog.new(blogs_params)

    if blog.save
      render json: { status: "SUCCESS", message: "Blog created succesfully", data: blog }, status: :created
    else
      render json: blog.errors, status: :unprocessable_entity
    end
  end

  private

  def blogs_params
    params.require(:blog).permit(:img, :dateWritten, :abbreviation, :abbreviated_name, :article_title, :article_description, :article_link)
  end
end
class Api::V1::BlogsController < ApplicationController
  # Show all the blogs available
  def index
    blogs = Blog.all
    if blogs
      render json: { status: "SUCCESS", message: "Blogs available", data: blogs }, status: :ok
    else
      render json: blogs.errors, status: :bad_request
    end
  end

  # Create a new blog
  def create
    blog = Blog.new(blogs_params)

    if blog.save
      render json: { status: "SUCCESS", message: "Blog created succesfully", data: blog }, status: :created
    else
      render json: blog.errors, status: :unprocessable_entity
    end
  end

  # Show details for a specific blog
  def show
    blog = Blog.find(params[:id])

    if blog
      render json: { message: "Blog exists!", data: blog }, status: :ok
    else
      render json: { message: "Blog could not be found" }, status: :bad_request
    end
  end

  # Update the details for a specific blog
  def update
    blog = Blog.find(params[:id])

    if blog.update!(blogs_params)
      render json: { message: "Blog was updated succesfully", data: blog }, status: :ok
    else
      render json: { message: "Blog cannot be updated" }, status: :unprocessable_entity
    end
  end

  # Delete a specific blog
  def destroy
    blog = Blog.find(params[:id])

    if blog.destroy!
      render json: { message: "Blog was deleted succesfully" }, status: :ok
    else
      render json: { message: "Blog does not exist" }, status: :bad_request
    end
  end

  private

  def blogs_params
    params.require(:blog).permit(:img, :dateWritten, :abbreviation, :abbreviated_name, :article_title, :article_description, :article_link)
  end
end
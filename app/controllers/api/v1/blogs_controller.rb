class Api::V1::BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    if @blogs
      render json: { status: "SUCCESS", message: "Blogs available", data: @blogs }, status: :ok
    else
      render json: @blogs.errors, status: :bad_request
    end
  end
end
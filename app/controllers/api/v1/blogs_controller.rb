class Api::V1::BlogsController < ApplicationController
  def index
    render json: { message: "Blogs available" }, status: :ok
  end
end
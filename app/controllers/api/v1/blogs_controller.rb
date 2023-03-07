class Api::V1::Blogscontroller < ApplicationController
  def index
    render json: { message: "Blogs available" }, status: :ok
  end
end
class Api::V1::PortfoliosController < ApplicationController
  def index
    render json: { message: "portfolio available" }, status: :ok
  end
end 
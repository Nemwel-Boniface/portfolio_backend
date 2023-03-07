class Api::V1::PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all

    if @portfolios
      render json: { status: "SUCCESS", message: "portfolio available", data: @portfolios }, status: :ok
    else
      render json: @portfolios.errors, status: :bad_request
    end
  end
end 
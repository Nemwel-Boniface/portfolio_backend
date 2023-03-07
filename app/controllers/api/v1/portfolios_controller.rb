class Api::V1::PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all

    if @portfolios
      render json: { status: "SUCCESS", message: "portfolio available", data: @portfolios }, status: :ok
    else
      render json: @portfolios.errors, status: :bad_request
    end
  end

  def create
    portfolio = Portfolio.new(portfolios_params)

    if portfolio.save
      render json: { status: "SUCCESS", message: "Portfolio was created succesfully", data: portfolio }, status: :created
    else
      render json: portfolio.errors, status: :unprocessable_entity
    end
  end

  private

  def portfolios_params
    params.require(:portfolio).permit(:img, :title, :techStack, :description, :live_link, :howBuiltAbbr, :howBuiltDesc)
  end
end 
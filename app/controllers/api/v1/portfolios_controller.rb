class Api::V1::PortfoliosController < ApplicationController
  # List all available portfolios
  def index
    @portfolios = Portfolio.all

    if @portfolios
      render json: { status: 'SUCCESS', message: 'portfolio available', data: @portfolios }, status: :ok
    else
      render json: @portfolios.errors, status: :bad_request
    end
  end

  # Create a portfolio
  def create
    portfolio = Portfolio.new(portfolios_params)

    if portfolio.save
      render json: { status: 'SUCCESS', message: 'Portfolio was created succesfully', data: portfolio },
             status: :created
    else
      render json: portfolio.errors, status: :unprocessable_entity
    end
  end

  # Show more details for a specific portfolio
  def show
    @portfolio = Portfolio.find(params[:id])

    if @portfolio
      render json: { message: 'Portfolio exists!', data: @portfolio }, status: :ok
    else
      render json: { message: 'Portfolio could not be found' }, status: :bad_request
    end
  end

  # Delete a specific portfolio
  def destroy
    @portfolio = Portfolio.find(params[:id])

    if @portfolio.destroy!
      render json: { message: 'Portfolio was deleted succesfully' }, status: :ok
    else
      render json: { message: 'Portfolio does not exist' }, status: :bad_request
    end
  end

  # Update details for a specific portfolio
  def update
    @portfolio = Portfolio.find(params[:id])

    if @portfolio.update!(portfolios_params)
      render json: { message: 'Portolio was updated succesfully', data: @portfolio }, status: :ok
    else
      render json: { message: 'Portfolio cannot be updated' }, status: :unprocessable_entity
    end
  end

  private

  def portfolios_params
    params.require(:portfolio).permit(:img, :title, :techStack, :description, :live_link, :howBuiltAbbr, :howBuiltDesc)
  end
end

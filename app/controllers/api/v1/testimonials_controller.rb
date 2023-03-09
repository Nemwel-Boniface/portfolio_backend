class Api::V1::TestimonialsController < ApplicationController
  # List all the testimonials that are available in the database
  def index
    testimonials = Testimonial.all

    if testimonials
      render json: { status: "SUCCESS", message: "Testimonials retrieved succesfully!", data: testimonials }, status: :ok
    else
      render json: testimonials.errors, status: :bad_request
    end
  end

  # Show details for a specific testimonial
  def show
    testimonial = Testimonial.find(params[:id])

    if testimonial
      render json: { message: "Testimonial was retrieved succesfully", data: testimonial }, status: :ok
    else
      render json: { message: "Testimonial could not be found" }, status: :bad_request
    end
  end
end
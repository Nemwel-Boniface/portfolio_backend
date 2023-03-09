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

  # Create a testimonial
  def create
    testimonial = Testimonial.new(testimonial_params)

    if testimonial.save
      render json: { status: 'SUCCESS', message: 'Testimonial was created succesfully', data: testimonial }, status: :created
    else
      render json: testimonial.errors, status: :unprocessable_entity
    end
  end

  # Update details for a specific testimonial
  def update
    testimonial = Testimonial.find(params[:id])

    if testimonial.update!(testimonial_params)
      render json: { message: 'Testimonial was updated succesfully', data: testimonial }, status: :ok
    else
      render json: { message: 'Testimonial cannot be updated' }, status: :unprocessable_entity
    end
  end

  # Delete a specific testimonial
  def destroy
    testimonial = Testimonial.find(params[:id])

    if testimonial.destroy!
      render json: { message: 'Testimonial was deleted succesfully'}, status: :ok
    else
      render json: { message: 'Testimonial does not exist!' }, status: :bad_request
    end
  end

  private

  def testimonial_params
    params.require(:testimonial).permit(:testimonial_desc, :testimonial_name, :testimonial_occupation, :testimonial_image, :testimonial_link)
  end
end
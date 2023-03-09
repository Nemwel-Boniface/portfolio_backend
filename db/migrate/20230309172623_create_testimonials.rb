class CreateTestimonials < ActiveRecord::Migration[7.0]
  def change
    create_table :testimonials do |t|
      t.text :testimonial_desc
      t.string :testimonial_name
      t.string :testimonial_occupation
      t.string :testimonial_image

      t.timestamps
    end
  end
end

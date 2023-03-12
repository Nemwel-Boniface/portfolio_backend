# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_09_172623) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "img"
    t.string "dateWritten"
    t.string "abbreviation"
    t.string "abbreviated_name"
    t.string "article_title"
    t.text "article_description"
    t.string "article_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "img"
    t.string "title"
    t.string "techStack"
    t.text "description"
    t.string "live_link"
    t.string "github_link"
    t.string "howBuiltAbbr"
    t.string "howBuiltDesc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.text "testimonial_desc"
    t.string "testimonial_name"
    t.string "testimonial_occupation"
    t.string "testimonial_image"
    t.string "testimonial_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

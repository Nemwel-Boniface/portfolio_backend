class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :img
      t.string :dateWritten
      t.string :abbreviation
      t.string :abbreviated_name
      t.string :article_title
      t.text :article_description
      t.string :article_link

      t.timestamps
    end
  end
end

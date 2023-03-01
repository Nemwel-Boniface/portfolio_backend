class CreatePortfolios < ActiveRecord::Migration[7.0]
  def change
    create_table :portfolios do |t|
      t.string :img
      t.string :title
      t.string :techStack
      t.text :description
      t.string :live_link
      t.string :github_link
      t.string :howBuiltAbbr
      t.string :howBuiltDesc

      t.timestamps
    end
  end
end

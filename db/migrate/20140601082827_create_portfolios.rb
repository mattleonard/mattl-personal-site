class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :photo
      t.text :description
      t.string :link

      t.timestamps
    end
  end
end

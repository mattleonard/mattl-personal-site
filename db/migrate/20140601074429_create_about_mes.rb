class CreateAboutMes < ActiveRecord::Migration
  def change
    create_table :about_mes do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.string :photo
      t.string :section_type

      t.timestamps
    end
  end
end

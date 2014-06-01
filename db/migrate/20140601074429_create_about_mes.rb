class CreateAboutMes < ActiveRecord::Migration
  def change
    create_table :about_mes do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.string :photo
      t.string :type

      t.timestamps
    end
  end
end

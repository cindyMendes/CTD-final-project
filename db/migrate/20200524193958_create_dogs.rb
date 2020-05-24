class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :image
      t.string :breed
      t.string :color
      t.string :size
      t.string :location
      t.datetime :date
      t.text :description
      t.references :list, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end

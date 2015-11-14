class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :color
      t.integer :size_in
      t.integer :age_year
      t.integer :age_week

      t.timestamps null: false
    end
  end
end

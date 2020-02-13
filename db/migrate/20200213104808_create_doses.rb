class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.text :description
      t.references :cocktail, null: false, foreign_key: true
      t.references :dose, null: false, foreign_key: true

      t.timestamps
    end
  end
end

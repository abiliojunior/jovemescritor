class CreateCapitulos < ActiveRecord::Migration[5.1]
  def change
    create_table :capitulos do |t|
      t.string :titulo
      t.integer :projeto_id

      t.timestamps
    end
  end
end

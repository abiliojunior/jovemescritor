class CreateCenas < ActiveRecord::Migration[5.1]
  def change
    create_table :cenas do |t|
      t.string :titulo
      t.text :conteudo
      t.integer :capitulo_id

      t.timestamps
    end
  end
end

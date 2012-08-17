class CreateAtletas < ActiveRecord::Migration
  def change
    create_table :atletas do |t|
      t.string :nome
      t.integer :idade
      t.boolean :sexo
      t.references :organizacao

      t.timestamps
    end
    add_index :atletas, :organizacao_id
  end
end

class CreateCompeticoes < ActiveRecord::Migration
  def change
    create_table :competicoes do |t|
      t.string :nome
      t.boolean :sexo
      t.integer :idade_min
      t.integer :idade_max

      t.timestamps
    end
  end
end

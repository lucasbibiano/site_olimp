class CreateAtletasCompeticoes < ActiveRecord::Migration
  def up
  	create_table :atletas_competicoes, :id => false do |t|
      t.references :atleta_id
      t.references :competicao_id
    end
  end

  def down
  	drop_table :atletas_competicoes
  end
end

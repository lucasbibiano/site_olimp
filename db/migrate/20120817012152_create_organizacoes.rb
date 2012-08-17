class CreateOrganizacoes < ActiveRecord::Migration
  def change
    create_table :organizacoes do |t|
      t.string :nome

      t.timestamps
    end
  end
end

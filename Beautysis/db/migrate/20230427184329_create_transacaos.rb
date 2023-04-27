class CreateTransacaos < ActiveRecord::Migration[7.0]
  def change
    create_table :transacaos do |t|
      t.string :descricao
      t.string :tipo
      t.float :valor
      t.date :data
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end

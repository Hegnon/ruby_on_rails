class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.date :data_nascimento
      t.integer :idade
      t.string :email
      t.string :instagram
      t.string :profissao
      t.string :cep
      t.string :logradouro
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :indicacao

      t.timestamps
    end
  end
end

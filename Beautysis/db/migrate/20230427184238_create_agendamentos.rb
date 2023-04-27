class CreateAgendamentos < ActiveRecord::Migration[7.0]
  def change
    create_table :agendamentos do |t|
      t.datetime :data_hora
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end

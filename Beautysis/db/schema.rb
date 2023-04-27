# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_27_184854) do
  create_table "agendamentos", force: :cascade do |t|
    t.datetime "data_hora"
    t.integer "cliente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_agendamentos_on_cliente_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.date "data_nascimento"
    t.integer "idade"
    t.string "email"
    t.string "instagram"
    t.string "profissao"
    t.string "cep"
    t.string "logradouro"
    t.string "complemento"
    t.string "bairro"
    t.string "cidade"
    t.string "uf"
    t.string "indicacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transacaos", force: :cascade do |t|
    t.string "descricao"
    t.string "tipo"
    t.float "valor"
    t.date "data"
    t.integer "cliente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_transacaos_on_cliente_id"
  end

  add_foreign_key "agendamentos", "clientes"
  add_foreign_key "transacaos", "clientes"
end

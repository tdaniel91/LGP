# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131204023651) do

  create_table "competencia", force: true do |t|
    t.integer  "utilizador_id"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contactos", force: true do |t|
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "utilizador_id"
    t.integer  "utilizador2_id"
  end

  create_table "cursos", force: true do |t|
    t.integer  "utilizador_id"
    t.string   "nome"
    t.string   "univ"
    t.datetime "ano"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empregos", force: true do |t|
    t.integer  "utilizador_id"
    t.integer  "empresa_id"
    t.string   "cargo"
    t.datetime "data_entrada"
    t.datetime "data_saida"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", force: true do |t|
    t.string   "nome"
    t.string   "historia"
    t.datetime "data_criacao"
    t.string   "email"
    t.integer  "telefone"
    t.string   "morada"
    t.string   "areas"
    t.string   "projectos"
    t.integer  "admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "noticia", force: true do |t|
    t.integer  "utilizador_id"
    t.string   "img"
    t.string   "texto"
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "utilizadors", force: true do |t|
    t.string   "nome"
    t.datetime "data_nascimento"
    t.string   "localidade"
    t.integer  "telefone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "frase"
    t.integer  "privacidade"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "utilizadors", ["email"], name: "index_utilizadors_on_email", unique: true
  add_index "utilizadors", ["reset_password_token"], name: "index_utilizadors_on_reset_password_token", unique: true

end

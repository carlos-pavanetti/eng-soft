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

ActiveRecord::Schema.define(version: 20151219011635) do

  create_table "administradores", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
  end

  add_index "administradores", ["usuario_id"], name: "index_administradores_on_usuario_id"

  create_table "anuncios", force: :cascade do |t|
    t.string   "tipo_anuncio"
    t.string   "observação"
    t.integer  "prazo_emprestimo"
    t.string   "troco_por"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "usuario_id"
    t.string   "titulo"
    t.string   "autor"
    t.integer  "edicao"
    t.string   "idioma"
    t.string   "imagem_capa_file_name"
    t.string   "imagem_capa_content_type"
    t.integer  "imagem_capa_file_size"
    t.datetime "imagem_capa_updated_at"
  end

  add_index "anuncios", ["usuario_id"], name: "index_anuncios_on_usuario_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end

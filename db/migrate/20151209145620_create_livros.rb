class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :nome
      t.string :autor
      t.integer :edicao
      t.string :idioma

      t.timestamps null: false
    end
  end
end

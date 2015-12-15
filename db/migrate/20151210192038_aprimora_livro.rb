class AprimoraLivro < ActiveRecord::Migration
  def change
    change_table :livros do |t|
      t.rename :nome, :titulo
      t.string :editora
      t.string :codigo_ISBN
    end
  end
end

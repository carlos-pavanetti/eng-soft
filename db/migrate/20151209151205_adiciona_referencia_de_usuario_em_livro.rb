class AdicionaReferenciaDeUsuarioEmLivro < ActiveRecord::Migration
  def change
    add_reference :livros, :usuario, index: true, foreign_key: true
  end
end

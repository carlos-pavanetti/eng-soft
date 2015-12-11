class ConsertaRelacaoAnuncioLivro < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up do
        remove_column :anuncios, :livro_id
        add_reference :livros, :anuncio, index: true, foreign_key: true
      end
      dir.down do
        remove_column :livros, :anuncio_id
        add_reference :anuncios, :livro, index: true, foreign_key: true
      end
    end
  end
end

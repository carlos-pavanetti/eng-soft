class FundirLivrosEmAnuncios < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :anuncios do |t|
        t.string :titulo
        t.string :autor
        t.integer :edicao
        t.string :idioma
      end

      dir.up do
        Anuncio.find_each do |anuncio|
          livro = Livro.find_by_anuncio_id(anuncio)
          anuncio.update titulo: livro.titulo, autor: livro.autor, edicao: livro.edicao, idioma: livro.idioma
        end

        drop_table :livros
      end

      dir.down do
        create_table :livros do |t|
          t.string :titulo
          t.string :autor
          t.integer :edicao
          t.string :idioma

          t.timestamps null: false
        end

        Livro.find_each do |livro|
          anuncio = Anuncio.find_by_id(livro.anuncio_id)
          livro.update titulo: anuncio.titulo, autor: anuncio.autor, edicao: anuncio.edicao, idioma: anuncio.idioma
        end
      end
    end
  end
end

class AdicionaImagemCapaEmAnuncios < ActiveRecord::Migration
  def change
    add_attachment :anuncios, :imagem_capa
  end
end

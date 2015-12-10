class CreateAnuncios < ActiveRecord::Migration
  def change
    create_table :anuncios do |t|
      t.integer :tipo_anuncio
      t.string :observação

      t.integer :prazo_emprestimo
      t.string :troco_por


      t.timestamps null: false
    end

    add_reference :anuncios, :livro, index: true, foreign_key: true
  end
end

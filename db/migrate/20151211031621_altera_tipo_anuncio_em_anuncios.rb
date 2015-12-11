class AlteraTipoAnuncioEmAnuncios < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up do
        change_column :anuncios, :tipo_anuncio, :string
      end
      dir.down do
        change_column :anuncios, :tipo_anuncio, :integer
      end
    end
  end
end

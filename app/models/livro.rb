class Livro < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :anuncio
end

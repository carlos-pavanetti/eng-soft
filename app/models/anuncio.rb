class Anuncio < ActiveRecord::Base
  has_one :livro
  belongs_to :usuario
end

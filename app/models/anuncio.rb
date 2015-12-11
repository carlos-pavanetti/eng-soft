class Anuncio < ActiveRecord::Base
  has_one :livro
  belongs_to :usuario

  scope :por_tipo, -> (t) { where "tipo_anuncio='#{t}'" }
  scope :emprestimo, -> { por_tipo('emprestimo') }
  scope :troca, -> { por_tipo('troca') }
end

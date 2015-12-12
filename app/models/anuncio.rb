class Anuncio < ActiveRecord::Base
  has_one :livro
  belongs_to :usuario

  scope :por_tipo, -> (t) { where "tipo_anuncio='#{t}'" }
  scope :emprestimo, -> { por_tipo('empréstimo') }
  scope :troca, -> { por_tipo('troca') }

  def opcao
    case tipo_anuncio
    when 'troca'
      troco_por
    when 'emprestimo'
      prazo_emprestimo.to_s + ' dias'
    end
  end

  def troca?
    return tipo_anuncio == 'troca'
  end
  def emprestimo?
    return tipo_anuncio == 'empréstimo'
  end
end

class Anuncio < ActiveRecord::Base
  # has_one :livro
  belongs_to :usuario

  has_attached_file :imagem_capa unless Rails.env.production?
  has_attached_file :imagem_capa, storage: imgur if Rails.env.production?

  scope :por_tipo, -> (t) { where "tipo_anuncio='#{t}'" }
  scope :emprestimo, -> { por_tipo('empréstimo') }
  scope :troca, -> { por_tipo('troca') }

  validates :tipo_anuncio, inclusion: {in: %w(troca empréstimo)}
  validates :prazo_emprestimo, numericality: {only_integer: true}, if: :emprestimo?
  validates :troco_por, presence: true, if: :troca?

  validates_attachment_content_type :imagem_capa, :content_type => /\Aimage\/.*\Z/

  def opcao=(opc)
    case tipo_anuncio
    when 'troca'
      troco_por = opc
    when 'empréstimo'
      prazo_emprestimo = opc
    end
  end

  def opcao
    case tipo_anuncio
    when 'troca'
      troco_por
    when 'empréstimo'
      prazo_emprestimo
    end
  end

  def troca?
    return tipo_anuncio == 'troca'
  end
  def emprestimo?
    return tipo_anuncio == 'empréstimo'
  end
end

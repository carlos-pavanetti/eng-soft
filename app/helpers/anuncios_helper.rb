module AnunciosHelper
  def announce_fields
    campos = []
    campos << {field: :titulo, label: 'Título', type: :text_field}
    campos << {field: :autor, label: 'Autor', type: :text_field}
    campos << {field: :edicao, label: 'Edição', type: :number_field}
    campos << {field: :idioma, label: 'Idioma', type: :text_field}

    campos << {field: :tipo_anuncio, label: 'Opção', type: :radio_button}
    campos << {field: :observação, label: 'Observação', type: :text_field}
    campos << {field: :troco_por, label: 'Troco Por', type: :text_field}

    campos << {field: :imagem_capa, label: 'Foto', type: :file_field}
    # campos << {field: :password, label: 'Senha', type: :password_field}
    # campos << {field: :password_confirmation, label: 'Confirme sua senha', type: :password_field}
    # campos << {field: :termos_de_servico, label: 'Aceito os termos de serviço', type: :check_box, require: :signup?}
    campos
  end
end

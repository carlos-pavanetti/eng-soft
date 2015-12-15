module AnunciosHelper
  def announce_fields
    campos = []
    campos << {field: :tipo_anuncio, label: 'Opção', type: :radio_button}
    campos << {field: :password, label: 'Senha', type: :password_field}
    campos << {field: :password_confirmation, label: 'Confirme sua senha', type: :password_field}
    # campos << {field: :termos_de_servico, label: 'Aceito os termos de serviço', type: :check_box, require: :signup?}
    campos
  end
end

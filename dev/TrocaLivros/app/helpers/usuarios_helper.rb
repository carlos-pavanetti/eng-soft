module UsuariosHelper
  def signup?
    return ['new', 'create'].include? params[:action]
  end

  def fields
    campos = []
    campos << {field: :nome, label: 'Nome Completo', type: :text_field}
    campos << {field: :email, label: 'Email', type: :text_field}
    campos << {field: :password, label: 'Senha', type: :password_field}
    campos << {field: :password_confirmation, label: 'Confirme sua senha', type: :password_field}
    # campos << {field: :termos_de_servico, label: 'Aceito os termos de serviço', type: :check_box, require: :signup?}
    campos
  end

  # def required_field?(field)
  #   resultado = !field[:require]
  #   resultado ||= send field[:require]
  # end
end

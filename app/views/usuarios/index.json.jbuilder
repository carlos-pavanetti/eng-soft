json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :email, :password_digest
  json.url usuario_url(usuario, format: :json)
end

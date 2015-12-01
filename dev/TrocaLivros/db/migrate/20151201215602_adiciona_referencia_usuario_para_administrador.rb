class AdicionaReferenciaUsuarioParaAdministrador < ActiveRecord::Migration
  def change
      add_reference :administradores, :usuario, index: true, foreign_key: true
  end
end

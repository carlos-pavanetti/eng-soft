class AlteraSenhaParaSenhaCriptografadaEmUsuarios < ActiveRecord::Migration
  def change
    rename_column :usuarios, :senha, :senha_criptografada
  end
end

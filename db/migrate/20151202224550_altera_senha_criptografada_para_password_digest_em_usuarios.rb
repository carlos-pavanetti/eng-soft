class AlteraSenhaCriptografadaParaPasswordDigestEmUsuarios < ActiveRecord::Migration
  def change
    rename_column :usuarios, :senha_criptografada, :password_digest
  end
end

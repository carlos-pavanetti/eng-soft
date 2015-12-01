class AdicionaSenhaParaUsuarios < ActiveRecord::Migration
  def change
      add_column :usuarios, :senha, :string
  end
end

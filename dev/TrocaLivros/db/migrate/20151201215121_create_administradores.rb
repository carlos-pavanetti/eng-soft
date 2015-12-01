class CreateAdministradores < ActiveRecord::Migration
  def change
    create_table :administradores do |t|

      t.timestamps null: false
    end
  end
end

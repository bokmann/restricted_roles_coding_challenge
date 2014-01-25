class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.references :organization

      t.timestamps
    end
    add_index :roles, :organization_id
  end
end

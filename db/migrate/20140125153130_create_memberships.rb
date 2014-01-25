class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :person
      t.references :role

      t.timestamps
    end
    add_index :memberships, :person_id
    add_index :memberships, :role_id
  end
end

class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.references :organization

      t.timestamps
    end
    add_index :people, :organization_id
  end
end

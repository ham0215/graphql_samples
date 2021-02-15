class CreateUserOrganization < ActiveRecord::Migration[6.1]
  def change
    create_table :user_organizations do |t|
      t.references :user, null: false, index: { name: 'user_id', unique: false }
      t.references :organization, null: false, index: { name: 'organization_id', unique: false }

      t.timestamps
    end
  end
end

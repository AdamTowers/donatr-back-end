class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :username
      t.string :name
      t.string :email
      t.string :password_digest
    end
  end
end

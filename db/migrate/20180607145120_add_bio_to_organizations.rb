class AddBioToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :bio, :string, :default => ""
  end
end

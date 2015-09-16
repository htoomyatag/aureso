class RemoveOrganizationInLocation < ActiveRecord::Migration
  def change
  	 remove_column :locations, :organization_id, :integer
  end
end

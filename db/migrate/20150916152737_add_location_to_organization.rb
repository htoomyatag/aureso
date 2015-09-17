class AddLocationToOrganization < ActiveRecord::Migration
  def change
  	  add_column :organizations, :location, :text
  end
end

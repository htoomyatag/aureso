class AddLocationToOrganization < ActiveRecord::Migration
  def change
  	  add_column :organizations, :location, :text, :array => true
  end
end

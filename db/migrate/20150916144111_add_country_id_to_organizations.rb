class AddCountryIdToOrganizations < ActiveRecord::Migration
  def change
  	 add_column :organizations, :country_id, :integer
  end
end

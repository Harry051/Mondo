class AddAddressToCountries < ActiveRecord::Migration[7.0]
  def change
    add_column :countries, :address, :string
  end
end

class RenameCountriesColumnInCities < ActiveRecord::Migration
  def change
    rename_column :cities, :countries, :country
  end
end

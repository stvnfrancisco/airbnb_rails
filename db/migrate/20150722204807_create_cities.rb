class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.column :name, :string
      t.column :state, :string
      t.column :countries, :string

      t.timestamps
    end
  end
end

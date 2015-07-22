class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.column :user_id, :integer
      t.column :city_id, :integer
      t.column :price, :integer
      t.column :description, :string
    end
  end
end

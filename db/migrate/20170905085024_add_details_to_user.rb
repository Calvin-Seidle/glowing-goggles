class AddDetailsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :surname, :string
    add_column :users, :admin, :boolean
  end
end

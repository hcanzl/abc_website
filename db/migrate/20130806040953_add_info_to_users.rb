class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :position, :string, default: ''
    add_column :users, :address, :string, default: ''
    add_column :users, :phone, :string, default: ''
  end
end

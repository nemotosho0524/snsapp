class AddMyProfileToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :my_profile, :string
  end
end

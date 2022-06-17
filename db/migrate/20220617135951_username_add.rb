class UsernameAdd < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    add_index :users, :username, unique: true 
  end
end

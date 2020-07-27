class ChangeSegments < ActiveRecord::Migration[6.0]
  def change
    remove_column :segments, :subproject_id, :integer
    add_reference :segments, :parent
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end

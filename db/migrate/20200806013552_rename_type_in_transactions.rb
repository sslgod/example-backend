class RenameTypeInTransactions < ActiveRecord::Migration[6.0]
  def change
    rename_column :transactions, :type, :transaction_type
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end

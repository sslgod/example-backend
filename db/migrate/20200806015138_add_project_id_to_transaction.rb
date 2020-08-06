class AddProjectIdToTransaction < ActiveRecord::Migration[6.0]
  def change
     add_reference :transactions, :project, foreign_key: true
  end
end

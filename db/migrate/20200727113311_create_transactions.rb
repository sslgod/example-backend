class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :segment
      t.float :amount, null: false, default: 0
      t.string :type, null: false, default: ''
      t.text :comment, null: false, default: ''

      t.timestamps
    end
  end
end

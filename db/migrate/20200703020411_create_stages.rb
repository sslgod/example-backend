class CreateStages < ActiveRecord::Migration[6.0]
  def change
    create_table :stages do |t|
      t.string :name, null: false
      t.datetime :started_at, null: false
      t.references :parent
      t.references :project
      t.boolean :is_done, null: false, default: false
      t.text :description, null: false, default: ''

      t.timestamps
    end
  end
end

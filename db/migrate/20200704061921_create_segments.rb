class CreateSegments < ActiveRecord::Migration[6.0]
  def change
    create_table :segments do |t|
      t.string :name
      t.references :project_id
      t.integer :days_duration
      t.string :days_suffix
      t.datetime :started_at
      t.text :description

      t.timestamps
    end
  end
end

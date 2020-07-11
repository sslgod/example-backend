class CreateSegments < ActiveRecord::Migration[6.0]
  def change
    create_table :segments do |t|
      t.string :name
      t.references :project
      t.references :subproject
      t.datetime :started_date
      t.datetime :due_date
      t.text :description

      t.timestamps
    end
  end
end

class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name

      t.timestamps
    end

    add_reference :projects, :user, foreign_key: true
  end
end

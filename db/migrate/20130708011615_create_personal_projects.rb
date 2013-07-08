class CreatePersonalProjects < ActiveRecord::Migration
  def change
    create_table :personal_projects do |t|
      t.string :name
      t.text :description
      t.integer :student_id

      t.timestamps
    end
  end
end

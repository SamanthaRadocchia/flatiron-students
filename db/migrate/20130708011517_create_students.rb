class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :given_name
      t.string :last_name
      t.date :date_of_birth
      t.text :tag_line
      t.text :description
      t.string :github_url
      t.string :linkedin_url

      t.timestamps
    end
  end
end

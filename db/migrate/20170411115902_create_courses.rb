class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
    	t.integer :teacher_id
    	t.string :name


      t.timestamps
    end
  end
end

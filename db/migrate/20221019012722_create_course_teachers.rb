class CreateCourseTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :course_teachers do |t|
      t.references :grade, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

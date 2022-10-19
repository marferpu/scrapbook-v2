class CreateGradeSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :grade_subjects do |t|
      t.references :grade, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end

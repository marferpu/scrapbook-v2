class GradeSubjectsController < ApplicationController
  def create
    @grade_subject = GradeSubject.new(grade_subject_params)
    @grade_subject.grade_id = @grade.id
    @grade_subject.subject_id = @subject.id
    if @grade_subject.save
      redirect_to grade_path
    else
      render :new_grade_path, status: :unprocessable_entity
    end
  end

  private

  def grade_subject_params
    params.require(:grade_subject).permit
  end
end

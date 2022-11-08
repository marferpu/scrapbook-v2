class GradesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_grade, only: %i[show edit update destroy]
  def index
    if current_user.admin_role?
      @grades = Grade.all
    else
      @grades = current_user.grades
    end
  end

  def new
    @grade = Grade.new
  end

  def create
    @grade = Grade.new(grade_params)
    if @grade.save
      redirect_to grades_path, notice: "Se agregó correctamente"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @grade = Grade.find(params[:id])
    @post = Post.new
    @post.grade_id = @grade.id
  end

  def edit; end

  def update
    if @grade.update(grade_params)
      redirect_to grade_path, notice: "Actualización exitosa"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @grade.destroy
    redirect_to grades_path, notice: "Eliminación exitosa", status: :see_other
  end

  private

  def grade_params
    params.require(:grade).permit(:name)
  end

  def set_grade
    @grade = Grade.find(params[:id])
  end
end

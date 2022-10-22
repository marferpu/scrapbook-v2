class SubjectsController < ApplicationController
  before_action :set_subject, only: %i[show edit update destroy]
  def index
    @subjects = Subject.all
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to subject_path, notice: "Se ha agregado la materia #{@subject.name} correctamente"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @subject.update(subject_params)
      redirect_to subject_path, notice: "Se ha actualizado la materia #{@subject.name} correctamente"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    @subject.destroy
    redirect_to subject_path, notice: "Se ha eliminado la materia #{@subject.name} correctamente"
  end

  private

  def subject_params
    params.require(:subject).permit(:name)
  end

  def set_subject
    @subject = Subject.find(params[:id])
  end
end

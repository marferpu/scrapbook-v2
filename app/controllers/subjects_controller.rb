class SubjectsController < ApplicationController
  before_action :set_subject, only: %i[show edit update destroy]
  # before_action :set_posts, only: %i[index]
  def index
    # @posts = Post.all
    if current_user.admin_role?
      @subjects = Subject.all
    else
      @subjects = []
      @posts = current_user.posts
      @posts.each do |post|
        @subjects << Subject.find(post.subject_id).name
      end
    end
    @subjects = delete_repited(@subjects)
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to subjects_path, notice: "Se ha agregado la materia #{@subject.name} correctamente"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @subject.update(subject_params)
      redirect_to subjects_path, notice: "Se ha actualizado la materia #{@subject.name} correctamente"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    # debugger
    @subject.destroy
    redirect_to subjects_path
  end

  private

  def subject_params
    params.require(:subject).permit(:name)
  end

  def set_subject
    @subject = Subject.find(params[:id])
  end

  # def set_posts
  #   @posts = Post.find(params[:id])
  # end
  def delete_repited(array)
      for i in 0...array.length
        dato = array[i]
        encontrado = 0
        for j in 0...array.length
          if(dato.eql?(array[j]) && i!=j)
            array.delete_at(i)
            encontrado  += 1
          end
        end
      end
      return array
  end
end

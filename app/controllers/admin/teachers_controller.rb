class Admin::TeachersController < Admin::BaseController
  before_action :set_teacher, only: [:edit, :update, :destroy]

  def index
    @teachers = Teacher.order(id: :desc)
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to admin_teachers_path, notice: 'Преподаватель успешно создан'
    else
      flash.now[:alert] = 'Не удалось создать преподователя'
      render :new
    end
  end

  def edit
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to admin_teachers_path, notice: 'Преподаватель успешно изменён'
    else
      flash.now[:alert] = 'Не удалось изменить преподователя'
      render :edit
    end
  end

  def destroy
    if @teacher.destroy
      redirect_to admin_teachers_path, notice: 'Преподаватель успешно удалён'
    else
      redirect_to admin_teachers_path, alert: 'Не удалось удалить преподователя'
    end
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def set_active_menu_item
    @main_menu[:teachers][:active] = true
  end

  def teacher_params
    params.require(:teacher).permit(:first_name,:last_name,:description)
  end
end

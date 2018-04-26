class Admin::TeachersController < Admin::BaseController
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
  end

  def destroy
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name,:last_name,:description)
  end

  def set_active_menu_item
    @main_menu[:teachers][:active] = true
   end
end

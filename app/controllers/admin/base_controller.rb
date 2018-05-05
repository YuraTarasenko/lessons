class Admin::BaseController < ApplicationController
  layout 'admin'

  before_action :set_main_menu, exept: :destroy
  before_action :set_active_menu_item, exept: :destroy

  private

  def set_main_menu
    @main_menu = { teachers: { name: 'Преподаватели', path: admin_teachers_path },
                   disciplines: { name: 'Дисциплины', path: admin_disciplines_path } }
  end
end

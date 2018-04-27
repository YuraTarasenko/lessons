class Admin::BaseController < ApplicationController
  layout 'admin'

  before_action :set_main_menu
  before_action :set_active_menu_item, exept: :destroy

  private

  def set_main_menu
    @main_menu = { teachers: { name: 'Преподаватели', path: admin_teachers_path } }
  end
end

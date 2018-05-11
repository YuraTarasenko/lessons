class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :recoverable,:registerable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable
end

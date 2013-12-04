class Utilizador < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :noticium
  has_many :competencium
  has_many :curso
  has_many :emprego
  has_many :contacto
end

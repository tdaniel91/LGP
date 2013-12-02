class Utilizador < ActiveRecord::Base
  has_many :noticium
  has_many :competencium
  has_many :curso
  has_many :emprego
  has_many :contacto
end

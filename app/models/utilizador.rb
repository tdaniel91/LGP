class Utilizador < ActiveRecord::Base
  has_many :noticium
  has_many :competencium
  has_many :curso
end

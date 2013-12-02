class Emprego < ActiveRecord::Base
  belongs_to :utilizador
  belongs_to :empresa
end

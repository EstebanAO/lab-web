class Professor < ApplicationRecord
  has_one :user
  has_many :announcements
  has_many :links
  enum professor_type: %i[Planta Catedra]
end

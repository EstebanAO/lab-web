class Professor < ApplicationRecord
  has_one :user
  has_many :announcements
  has_many :documents
  enum professor_type: %i[Planta Catedra]
end

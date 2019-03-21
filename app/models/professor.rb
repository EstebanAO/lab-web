class Professor < ApplicationRecord
  belongs_to :user, :dependent => :destroy
  has_many :announcements
  has_many :documents
  enum professor_type: %i[Planta Catedra]
end

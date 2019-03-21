class Professor < ApplicationRecord
  belongs_to :user, :dependent => :destroy
  has_many :announcements, :dependent => :destroy
  has_many :documents, :dependent => :destroy
  enum professor_type: %i[Planta Catedra]
end

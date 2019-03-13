class Professor < ApplicationRecord
  has_one :user
  has_many :announcements
  has_many :links
end

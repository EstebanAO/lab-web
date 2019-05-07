class Professor < ApplicationRecord
  belongs_to :user, :dependent => :destroy
  has_many :announcements, :dependent => :destroy
  has_many :documents, :dependent => :destroy
  enum professor_type: %i[Planta Catedra]

  before_save :validate_https

  def validate_https
    if self.resume == "" || self.resume == nil then
      return 
    end
    url_cpy_with_s = self.resume
    url_cpy_with_out_s = self.resume
    url_cpy_with_s = url_cpy_with_s[0...8]
    url_cpy_with_out_s = url_cpy_with_out_s[0...7]
    if url_cpy_with_s == "https://" then
      self.resume = self.resume[8...]
    end
    if url_cpy_with_out_s == "http://" then
      self.resume = self.resume[7...]
    end
  end
end

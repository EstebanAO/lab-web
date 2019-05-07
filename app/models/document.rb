class Document < ApplicationRecord
  belongs_to :professor
  
  before_save :validate_https

  def validate_https
    url_cpy_with_s = self.url
    url_cpy_with_out_s = self.url
    url_cpy_with_s = url_cpy_with_s[0...8]
    url_cpy_with_out_s = url_cpy_with_out_s[0...7]
    if url_cpy_with_s == "https://" then
      self.url = self.url[8...]
    end
    if url_cpy_with_out_s == "http://" then
      self.url = self.url[7...]
    end
  end
end

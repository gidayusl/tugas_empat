class Article < ApplicationRecord
  validates :title, presence: true,
    length: { minimum: 5 }
  validates :content, presence: true,
    length: { minimum: 10 }
  validates :status, presence: true
  
  default_scope {where(status: 'active')}
  
  has_attached_file :picture, styles: { medium: "600x300>", thumb: "100x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
end

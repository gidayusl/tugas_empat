class Article < ApplicationRecord
  validates :title, presence: true,
    length: { minimum: 5 }
  validates :content, presence: true,
    length: { minimum: 10 }
  validates :status, presence: true
  
  default_scope {where(status: 'active')}
end

class Article < ApplicationRecord
  scope :status_active, -> {where(status: 'active')}
end

# class Article < ActiveRecord::Base
        # validates :title, presence: true,
                            # length: { minimum: 5 }
        # validates :content, presence: true,
                            # length: { minimum: 10 }
        # validates :status, presence: true
    # end

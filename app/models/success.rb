class Success < ApplicationRecord
  belongs_to :user

  validates :post, presence: true
end

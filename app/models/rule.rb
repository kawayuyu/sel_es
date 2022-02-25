class Rule < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :if
    validates :then
  end
end

class Rule < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :if_1
    validates :then_1
  end
end

class Success < ApplicationRecord
  class Rule < ApplicationRecord
    belongs_to :user
  
    with_options presence: true do
      validates :success
    end

  end
  
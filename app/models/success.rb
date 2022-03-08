class Success < ApplicationRecord
  belongs_to :user

  NGWORD_REGEX = /(.)\1{4,}/.freeze
  with_options presence: true do  
   with_options format: { without: NGWORD_REGEX, message: 'は5文字以上の連続する文字は禁止です' } do
    validates :post, obscenity: { message: 'にNGワードが入力されています' }
   end
  end
end

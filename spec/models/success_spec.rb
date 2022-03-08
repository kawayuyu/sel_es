require 'rails_helper'

RSpec.describe Success, type: :model do
  before do
    @success = FactoryBot.create(:success)
  end

  describe '成功体験の投稿' do
    context '新規投稿ができるとき' do
      it '投稿内容を入力していれば登録できる' do
        @success.post = '成功体験'
        expect(@success).to be_valid
      end
    end

    context '新規投稿ができないとき' do
      it '投稿内容が空欄だと登録できない' do
        @success.post = nil
        @success.valid?
        expect(@success.errors.full_messages).to include('投稿内容を入力してください')
      end
      it '5文字以上の連続する文字を使用すると登録できない' do
        @success.post = '成成成成成'
        @success.valid?
        expect(@success.errors.full_messages).to include('投稿内容は5文字以上の連続する文字は禁止です')
      end
    end
  end
end
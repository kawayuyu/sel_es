require 'rails_helper'

RSpec.describe Rule, type: :model do
  before do
    @rule = FactoryBot.create(:rule)
  end

  describe 'if then プランニングを浸かった習慣の設定' do
    context '習慣設定ができるとき' do
      it '全ての入力事項を、入力していると登録できる' do
        expect(@rule).to be_valid
      end
      it '「状況」部分を入力していれば登録できる' do
        @rule.if_1 = '状況'
        expect(@rule).to be_valid
      end
      it '「行動」部分を入力していれば登録できる' do
        @rule.then_1 = '行動'
        expect(@rule).to be_valid
      end
    end

    context '習慣設定ができないとき' do
      it '「状況」部分が空欄だと登録できない' do
        @rule.if_1 = nil
        @rule.valid?
        expect(@rule.errors.full_messages).to include("状況を入力してください")
      end
      it '「行動」部分が空欄だと登録できない' do
        @rule.then_1 = nil
        @rule.valid?
        expect(@rule.errors.full_messages).to include("行動を入力してください")
      end
    end
  end
end
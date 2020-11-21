require 'rails_helper'
describe Order do
  describe '#create' do
    # 1. waffleの個数が空では登録できない
    it "is invalid without a WaffleSelect" do
      order = build(:order, plain: nil, choco: nil, matcha: nil, maple: nil, lemon: nil)
      order.valid?
      expect(order.errors[:WaffleSelect]).to include("を入力してください")
    end

    # 2. 日付が空では登録できない
    it "is invalid without a signup_at" do
      order = build(:order, signup_at: nil)
      order.valid?
      expect(order.errors[:signup_at]).to include("を入力してください")
    end

    # 3. 過去の日付では登録できない
    it "is invalid date_cannot_be_in_the_past" do
      order = build(:order, signup_at: "2020-10-12")
      order.valid?
      expect(order.errors[:signup_at]).to include(": 過去の日付は使用できません")
    end

    # 4. 時間が空では登録できない
    it "is invalid without time" do
      order = build(:order, time: nil)
      order.valid?
      expect(order.errors[:time]).to include("を入力してください")
    end
  end
end
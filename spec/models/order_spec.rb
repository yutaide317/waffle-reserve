require 'rails_helper'
describe Order do
  describe '#create' do
    # 1. waffleの個数が空では登録できない
    it "is invalid without a WaffleSelect" do
      order = build(:order, plain: nil, choco: nil, matcha: nil, maple: nil, lemon: nil)
      order.valid?
      expect(order.errors[:WaffleSelect]).to include("を入力してください")
    end

    it "is invalid without a signup_at" do
      order = build(:order, signup_at: nil)
      order.valid?
      expect(order.errors[:signup_at]).to include("を入力してください")
    end
  end
end
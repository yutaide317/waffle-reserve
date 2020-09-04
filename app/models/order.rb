class Order < ApplicationRecord
  validates :signup_at, presence: true
  validates :time, presence: true
  validates :WaffleSelect, presence: true
  validate :date_cannot_be_in_the_past
  belongs_to :user
  
  private
    def WaffleSelect
      plain.presence or choco.presence or matcha.presence or lemon.presence or maple.presence
    end
    def date_cannot_be_in_the_past
      if signup_at.present? && signup_at < Date.today
        errors.add(:signup_at, ": 過去の日付は使用できません")
      end
    end
end

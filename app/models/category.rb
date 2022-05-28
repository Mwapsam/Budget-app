# frozen_string_literal: true

class Category < ApplicationRecord
  belongs_to :user
  has_many :category_payments
  has_many :payments, through: :category_payments

  has_one_attached :icon, dependent: :destroy

  validates :name, presence: true, length: { maximum: 250 }
  validates :user_id, presence: true

  def recent_payments
    payments.order(created_at: :desc).limit(5)
  end
end

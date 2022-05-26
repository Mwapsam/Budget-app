# frozen_string_literal: true

class Payment < ApplicationRecord
  belongs_to :user
  has_many :category_payments
  has_many :categories, through: :category_payments

  validates :name, presence: true, length: { maximum: 250 }
  validates :amount, presence: true, numericality: { greater_than: 0, less_than: 100_000_000 }
  validates :user_id, presence: true
end

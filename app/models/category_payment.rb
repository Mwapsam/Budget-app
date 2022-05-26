# frozen_string_literal: true

class CategoryPayment < ApplicationRecord
  belongs_to :category, class_name: 'Category'
  belongs_to :payment, class_name: 'Payment'

  validates :category_id, presence: true
  validates :payment_id, presence: true
end

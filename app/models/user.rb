# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :payments, dependent: :destroy
  has_many :categories, dependent: :destroy

  has_one_attached :profile_picture, dependent: :destroy

  validates :name, presence: true, length: { maximum: 250 }

  def most_recent_categories
    categories.order(created_at: :desc).limit(3)
  end

  def most_ancient_categories
    categories.order(created_at: :asc).limit(3)
  end

  def admin?
    admin
  end
end

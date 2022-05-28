class AddCategoryRefToPayment < ActiveRecord::Migration[7.0]
  def change
    add_reference :payments, :category, foreign_key: true
  end
end

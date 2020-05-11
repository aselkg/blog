class Order < ApplicationRecord
  belongs_to :customer
  validates_presence_of :customer
  validates :product_name, presence: true
  validates :product_name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters"}
  validates :product_count, presence: true
  validates :product_count, numericality: { other_than: 0 }
  
end

class OrderShop < ApplicationRecord
  belongs_to :order
  belongs_to :shop
  has_many :order_lines, dependent: :destroy

  validates :subtotal_price_cents, presence: true
  validates :status, inclusion: { in: ["pending", "completed"] }

  monetize :subtotal_price_cents

  # def mark_as_done!
  # 	status: "completed"
  # end
end

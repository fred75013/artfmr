# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :line_products, -> { order(:created_at) }, dependent: :destroy
  has_many :products, through: :line_products, dependent: :destroy
  belongs_to :user, optional: true

  def sub_total
    sum = 0
    line_products.each do |line_product|
      sum += line_product.price
    end
    sum
  end
end

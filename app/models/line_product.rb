# frozen_string_literal: true

class LineProduct < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :order, optional: true
end

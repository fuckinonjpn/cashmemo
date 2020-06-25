# frozen_string_literal: true

class Transaction < ApplicationRecord
  acts_as_paranoia
  belongs_to :user

  enum transaction_type: { plus: 1, minus: 2 }
  enum category: { food: 0, personal: 1, amusement: 2, other: 3, atm: 4 }
end

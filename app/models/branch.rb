class Branch < ApplicationRecord
  has_many :loans
  has_many :accounts
end

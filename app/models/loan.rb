class Loan < ApplicationRecord
  belongs_to :branch
  has_one :borrower
end

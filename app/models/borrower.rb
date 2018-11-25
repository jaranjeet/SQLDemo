class Borrower < ApplicationRecord
  belongs_to :loan
  belongs_to :customer
end

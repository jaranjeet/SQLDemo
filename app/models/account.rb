class Account < ApplicationRecord
  belongs_to :branch
  has_one :depositor
end

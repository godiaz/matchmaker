class User < ApplicationRecord
  validates :email_address, uniqueness: true
end

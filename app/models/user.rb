class User < ApplicationRecord
  has_secure_password

  validates :name, {presence: true, uniqueness: true}
  validates :email, {presence: true, uniqueness: true}
  validates :tell, {presence: true, uniqueness: true}

  self.table_name = 'users'
end

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true;
  validates_format_of :email, :with => /\A([a-zA-Z0-9._-]+@monstar-lab.com)\Z/i
  validates :password, presence: true, length: { minimum: 8, maximum: 20 }
end
class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: true }

  has_many :links
  has_many :reviews

  def admin?
    true
  end
end

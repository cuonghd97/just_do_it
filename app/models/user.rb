class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  before_save :downcase_email

  enum gender: [:male, :female, :other]

  has_many :comments
  has_many :ratings
  has_many :carts
  has_many :invoices

  has_secure_password

  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  private
    def downcase_email
      self.email = email.downcase
    end
end

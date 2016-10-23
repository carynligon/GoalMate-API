class User < ApplicationRecord
  has_secure_password
  serialize :goals,Array
  
  validates_presence_of :email, :first_name, :last_name, :password_digest, :zipcode
  validates_uniqueness_of :email

  before_save :downcase_email

  has_and_belongs_to_many :goals
  has_many :posts

  private

    def downcase_email
      self.email = self.email.downcase
    end

end

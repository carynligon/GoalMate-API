class User < ActiveRecord::Base
  has_secure_password
  serialize :goals,Array
  
  validates_presence_of :email, :first_name, :last_name, :password_digest, :zipcode
  validates_uniqueness_of :email

  before_save :downcase_email

  has_many :goals, through: :goals_users

  private

    def downcase_email
      self.email = self.email.downcase
    end

end

class User < ActiveRecord::Base
  has_secure_password
  serialize :goals,Array
  
  validates_presence_of :email, :first_name, :last_name, :password, :zipcode
  validates_uniqueness_of :email

  before_save :downcase_email

  private

    def downcase_email
      self.email = email.downcase_email
    end

end

class User < ActiveRecord::Base
  EMAIL_FORMAT = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i


  validates_presence_of :name
  validates_format_of :email, :with => EMAIL_FORMAT
  validates_uniqueness_of :email

  def authenticate(password)
  	self if self.password == password
  end
end

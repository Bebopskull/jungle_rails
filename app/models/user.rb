class User < ActiveRecord::Base

	validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
 
  validates :password_digest, confirmation: true, unless: -> { password_digest.blank? }, length: { minimum: 6 }
  


	def authenticate_with_credentials(email, password)

	# return: an instance of the user (if successfully authenticated), or nil (otherwise).
	end


end
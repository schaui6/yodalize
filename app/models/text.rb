class Text < ActiveRecord::Base
  validates :message, presence: true
  # Remember to create a migration!
  # validates :first_name, :last_name, :user_name, :email, :password_hash, presence: true
  # validates :user_name, :email, uniqueness: true

#   def password
#     @password ||= BCrypt::Password.new(password_hash)
#   end

#   def password=(new_password)
#     @password = BCrypt::Password.create(new_password)
#     self.password_hash = @password
#   end

#   def authenticate(password)
#     self.password == password
#   end

#   def full_name
#     "#{first_name} #{last_name}"
#   end
end

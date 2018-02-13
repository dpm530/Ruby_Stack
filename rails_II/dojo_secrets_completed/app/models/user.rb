class User < ActiveRecord::Base

   has_many :secrets
   has_many :likes, dependent: :destroy
   has_many :secrets_liked, through: :likes, source: :secret

   has_secure_password

   EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

   validates :first_name, :last_name, :email, presence: true
   validates :email, uniqueness: {case_sensitive: false}, format: {with: EMAIL_REGEX}
   validates_presence_of :password_confirmation, if: :password_digest_changed?

   before_save :downcase

   def downcase
      first_name.downcase!
      last_name.downcase!
      email.downcase!
   end

end

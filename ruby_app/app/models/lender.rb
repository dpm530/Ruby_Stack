class Lender < ActiveRecord::Base
   has_many :histories
   has_many :borrowers, through: :histories

   has_secure_password

   before_save :downcase_fields

   validates :first_name, :last_name, presence: true, length: 2..30
   validates_format_of :first_name,:last_name, with: /\A[-a-z ']+\Z/i
   validates :email, presence: true, uniqueness: true
   validates_format_of :email,with:  /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
   validates :password, presence: true, length: { minimum: 8 }
   validates :money, presence: true



   def downcase_fields
      self.first_name.downcase!
      self.last_name.downcase!
      self.email.downcase!
   end

end

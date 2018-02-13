class User < ActiveRecord::Base
   EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

   validates :first_name,:last_name,presence: true,length:{in: 1..255,message: "First Name and Last Name must be present."}

   validates :email,presence: true,uniqueness:{case_sensitive: false},format:{with: EMAIL_REGEX}

   validates :age, numericality:{only_integer: true}

   validates :age, length:{in: 10..150,message: "Age must be more than 10 and less than 150."}


end

class Dojo < ActiveRecord::Base
   has_many :ninjas, dependent: :destroy
   validates :name, :city, :state, presence: true, length: { in: 1..20 }
   validates :state, length:{is: 2}
end

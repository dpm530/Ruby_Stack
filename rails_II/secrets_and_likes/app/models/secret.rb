class Secret < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependant: :destroy
  has_many :users, through: :likes

  validates :content, presence: true

end

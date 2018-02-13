class Message < ActiveRecord::Base
  belongs_to :post
  validates :author, :message, presence: true, length:{minimum: 15}
end

class Post < ActiveRecord::Base
   has_many :messages, dependant: :destroy
   belongs_to :blog
   validates :title, :content, presence: true, length:{minimum: 7}
end

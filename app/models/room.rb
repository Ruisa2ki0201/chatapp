class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users, dependent: :destroy
  has_many :messages, dependent: :destroy
  validates :name, presence: true

end




# tweet model 
# belong_to :user
# has_many :comments

# user model 
# has_many :tweets
# has_many :comments


# comment model 
# belongs_to :tweet
# belong_to :user
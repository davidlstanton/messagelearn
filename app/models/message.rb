class Message < ActiveRecord::Base
  attr_accessible :body, :title, :user_id

  belongs_to :user

  validates :title, presence: true,
                    length: { minimum: 3 }

  validates :body, presence: true
  validates :user, presence: true

end
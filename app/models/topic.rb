class Topic < ApplicationRecord
  belongs_to :user

  validates :content, :topic, presence: true
end

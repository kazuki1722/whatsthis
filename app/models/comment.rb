class Comment < ApplicationRecord
  validates :text, presence: true

  belongs_to :photo
  belongs_to :user
end

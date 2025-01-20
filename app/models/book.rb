class Book < ApplicationRecord
  belongs_to :user
  validates :title, :author, :isbn, presence: true
end

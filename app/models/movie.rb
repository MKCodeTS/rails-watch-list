class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :overview, presence:true

  has_many :bookmarks
end


  # title is unique (FAILED - 3)
  # title cannot be blank (FAILED - 4)
  # overview cannot be blank (FAILED - 5)
  # has many bookmarks (FAILED - 6)
  # should not be able to destroy self if has bookmarks children (FAILED - 7)

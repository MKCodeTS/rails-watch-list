class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :movies, through: :bookmarks
end

  # name cannot be blank (FAILED - 1)
  # name is unique (FAILED - 2)
  # has many bookmarks (FAILED - 3)
  # has many movies (FAILED - 4)
  # should destroy child saved movies when destroying self (FAILED - 5)

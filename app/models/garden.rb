class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy # => what would happen with the "orphan" plants

  validates :name, :banner_url, presence: true
  validates :name, length: { minimum: 3 }
  validates :banner_url, format: { with: /\Ahttp.+\.(jpg|png)/ }
end

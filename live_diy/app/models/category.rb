class Category < ApplicationRecord
  has_many :projects

  validates :image_url, presence: true
  

end

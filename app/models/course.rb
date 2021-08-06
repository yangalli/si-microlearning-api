class Course < ApplicationRecord
  has_many :lessons

  has_one_attached :banner
end

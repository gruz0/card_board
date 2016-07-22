class Picture < ApplicationRecord
  has_one :post

  has_attached_file :image
end
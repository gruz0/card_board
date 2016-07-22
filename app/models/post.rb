class Post < ApplicationRecord
  has_many :pictures
  has_one :video
end

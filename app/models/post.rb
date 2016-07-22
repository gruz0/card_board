class Post < ApplicationRecord
  has_many :pictures
  has_one :video

  has_attached_file :preview
end

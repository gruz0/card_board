class Post < ApplicationRecord
  has_many :pictures
  has_one :video

  has_attached_file :preview, styles: { medium: "300x300>", thumb: "100x100>" }#, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :preview, content_type: /\Aimage\/.*\Z/

  VIDEO  = 'video'
  PICTURES = 'pictures'

  MATERIAL_TYPES = [VIDEO, PICTURES]

  validates :material_type, inclusion: MATERIAL_TYPES

  accepts_nested_attributes_for :video,
                                :allow_destroy => true,
                                :reject_if     => :all_blank

  accepts_nested_attributes_for :pictures,
                                reject_if: :all_blank,
                                allow_destroy: true
end

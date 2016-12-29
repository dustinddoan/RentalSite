class House < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode
  belongs_to :user, dependent: :delete

  validates :picture,
    attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
    attachment_size: { less_than: 5.megabytes }

  has_attached_file :picture, styles: {thumb: '100x100>',square: '200x200',medium: '300x300'}
end

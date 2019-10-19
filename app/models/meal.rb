class Meal < ApplicationRecord
  belongs_to :user
  has_one_attached :pic
  # validates :pic, attachment_content_type: { in: %w[image/jpeg image/png] }
  # validates :avatar, attachment_size: 0..500.kilobytes
  # validates :calories, :fats, :carbs, numericality: true
  validate :image_type
  validate :image_size
  def thumbnail
    self.pic.variant(resize: '200x200').processed
  end
  private
  def image_size
    unless pic.blob.byte_size < 1.megabyte 
      errors.add(:pic, "is too big (less than 1 megabyte)")
    end
  end
  def image_type
    unless pic.content_type.in?(%(image/jpeg image/png))
      errors.add(:pic, "is not a jpg or png")
    end
  end
end

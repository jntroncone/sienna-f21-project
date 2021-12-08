# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  caption    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Post < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_many :likes, dependent: :destroy


    validate :image_presence
  def image_presence
    errors.add(:image, "can't be blank") unless image.attached?
  end
  
end




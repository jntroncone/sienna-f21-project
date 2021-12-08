# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  parent_id  :integer
#  post_id    :integer
#
class Comment < ApplicationRecord
    belongs_to :post
    validates :body, presence: true

end

# == Schema Information
#
# Table name: recipes
#
#  id                 :integer          not null, primary key
#  name               :string
#  duration           :string
#  user_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  description        :text
#  category_id        :integer
#

class Recipe < ActiveRecord::Base
  has_attached_file :photo, styles: {medium: "300x300>", thumb: "150x150>" }, default_url: 'missing/thumb.png'
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  belongs_to :user
  belongs_to :category
  belongs_to :ingredient
  enum difficulty: [:easy, :medium, :hard]

  validates :user_id, presence: true

  def self.search(search)
    where('description ILIKE ?', "%#{search}%")
  end

end

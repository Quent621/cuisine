# == Schema Information
#
# Table name: categories
#
#  id                 :integer          not null, primary key
#  name               :string
#  recipe_id          :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#

class Category < ActiveRecord::Base
  has_attached_file :photo, styles: {medium: "300x300>", thumb: "150x150>" }, default_url: 'missing/thumb.png'
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  has_many :recipes
end

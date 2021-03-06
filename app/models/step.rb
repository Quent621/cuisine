# == Schema Information
#
# Table name: steps
#
#  id         :integer          not null, primary key
#  name       :string
#  content    :text
#  recipe_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Step < ActiveRecord::Base
  belongs_to :recipe
end

# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  quantity   :integer
#  unity      :integer
#  recipe_id  :integer
#

class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  enum unity: [:kg, :g, :mg, :l, :cl, :ml, :soupe, :café]
end

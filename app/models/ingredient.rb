# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  quantity   :float
#  unity      :integer
#

class Ingredient < ActiveRecord::Base

  belongs_to :recipe
  enum unity: [:grams, :liter, :cs, :cc]
end


# Ingredient.liter.count=end

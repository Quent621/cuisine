# == Schema Information
#
# Table name: previews
#
#  id         :integer          not null, primary key
#  note       :string
#  comment    :string
#  user_id    :integer
#  recipe_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PreviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

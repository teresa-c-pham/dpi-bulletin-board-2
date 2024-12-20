# == Schema Information
#
# Table name: boards
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Board < ApplicationRecord
  validates(:name, presence: true, uniqueness: true)
  validates(:user_id, presence: true)

  def owner
    user = User.where(:id => self.user_id).at(0)
    return user
  end
end

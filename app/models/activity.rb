# == Schema Information
#
# Table name: activities
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  abstract    :text
#  detail      :text
#  category_id :integer
#  note        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Activity < ActiveRecord::Base
  validates :title, presence: true
  validate :category_exists

  belongs_to :category

  private
  def category_exists
    errors.add(:base, "Category must exist") unless Category.find_by_id(self.category_id)
  end

end

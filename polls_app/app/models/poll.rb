# == Schema Information
#
# Table name: polls
#
#  id         :bigint           not null, primary key
#  user_id    :integer          not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Poll < ApplicationRecord
  validates :id, :user_id, uniqueness: true
  validates :title, presence: true
  belongs_to :user,
    class_name: :User,
    primary_key: :id,
    foreign_key: :user_id

  has_many :questions,
    class_name: :Question,
    primary_key: :id,
    foreign_key: :poll_id
end

# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
	attr_accessible :name, :password, :password_confirmation
	validates :name, presence: true, uniqueness: true
	has_secure_password
end

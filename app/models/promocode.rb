class Promocode < ActiveRecord::Base
	belongs_to :user

	validates :text,      presence: true
	validates :recipient, presence: true
	validates :task,      presence: true, uniqueness: true
end
class Promocode < ActiveRecord::Base
	validates :text,      presence: true
	validates :recipient, presence: true
	validates :task,      presence: true, uniqueness: true
end

class Promocode < ActiveRecord::Base
	belongs_to :company
	default_scope -> { order('created_at DESC') }

	validates :text,      presence: true
	validates :recipient, presence: true
	validates :task,      presence: true, uniqueness: true
end
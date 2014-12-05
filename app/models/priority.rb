class Priority < ActiveRecord::Base
	belongs_to :pokemon
	validates :value
end

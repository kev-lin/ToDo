class Pokemon < ActiveRecord::Base
  acts_as_paranoid
  belongs_to :trainer
  validates :name, presence: true, uniqueness: true
end

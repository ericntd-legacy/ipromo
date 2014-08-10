# == Schema Information
#
# Table name: promos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  desc       :string(255)
#  imgsrc     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Promo < ActiveRecord::Base
  attr_accessible :desc, :imgsrc, :name

	validates :desc, presence: true
	validates :imgsrc, presence: true
	validates :name, presence: true

end

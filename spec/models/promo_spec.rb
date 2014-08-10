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

require 'spec_helper'

describe Promo do
  pending "add some examples to (or delete) #{__FILE__}"
end

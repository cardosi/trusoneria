# == Schema Information
#
# Table name: toppings
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Topping, type: :model do
  # Test validations
  it { should validate_presence_of(:name) }
end

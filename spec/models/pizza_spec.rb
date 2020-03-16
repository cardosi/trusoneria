# == Schema Information
#
# Table name: pizzas
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Pizza, type: :model do
  # Test validations
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
end

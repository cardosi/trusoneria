# == Schema Information
#
# Table name: pizza_toppings
#
#  id         :bigint           not null, primary key
#  pizza_id   :bigint           not null
#  topping_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe PizzaTopping, type: :model do
  it { should belong_to(:pizza) }
  it { should belong_to(:topping) }
end

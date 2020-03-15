require 'rails_helper'

RSpec.describe Topping, type: :model do
  # Test validations
  it { should validate_presence_of(:name) }
end

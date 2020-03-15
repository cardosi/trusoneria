require 'rails_helper'

RSpec.describe Pizza, type: :model do
  # Test validations
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
end

require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:nutritional_information) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:price) }
end

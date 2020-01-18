require 'rails_helper'

describe Review do
  it { should belong_to(:product) }
  it { should validate_presence_of :author }
  it { should validate_presence_of :content }
  it { should validate_presence_of :rating }
  it { should validate_numericality_of(:rating).is_less_than_or_equal_to(5) }
  it { should validate_length_of(:author).is_at_most(40) }
end

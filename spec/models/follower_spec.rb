require 'rails_helper'

RSpec.describe Follower, type: :model do
  it { should validate_uniqueness_of(:follower_id).scoped_to(:following_id) }
end
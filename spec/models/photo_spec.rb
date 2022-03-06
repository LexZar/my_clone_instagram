require 'rails_helper'

RSpec.describe Photo, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:likes) }
  it { should have_many(:comments) }
end
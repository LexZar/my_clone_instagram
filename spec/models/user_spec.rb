require 'rails_helper'

RSpec.describe User, type: :model do
    describe 'test Class User' do
      it "#full_name methods" do
        user = User.new(first_name: "ivan", last_name: "ivanov")
        expect(user.full_name).to eq("ivan ivanov")
      end
    
      it "#all_followers methods" do
        user = User.new
        expect(user.all_followers).to eq(0)
      end

      it "#all_followind methods" do
        user = User.new
        expect(user.all_following).to eq(0)
      end

      it { should have_many(:photos) }
      it { should have_many(:comments) }
      it { should have_many(:likes) }
    end
end


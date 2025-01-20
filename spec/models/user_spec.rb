require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    subject { User.create!(email: 'test@example.com', password: 'password123') }

    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }

    it 'requires a password' do
      user = User.new(email: 'test@example.com', password: nil)
      expect(user).not_to be_valid
      expect(user.errors[:password]).to include("can't be blank")
    end
  end

  describe 'relationships' do
    it { should have_many(:books).dependent(:destroy) }
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  context "emailが重複する場合" do
    let!(:existing_user) { FactoryBot.create(:user, email: 'alice@example.com') }
    subject { FactoryBot.build(:user, email: 'alice@example.com') }
    it { is_expected.to be_invalid }
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { FactoryBot.build(:user, email: email) }

  context "emailが重複してする場合" do
    existed_user =  User.find_by(username: "existed_user") || FactoryBot.create(:existed_user)
    let(:email) { existed_user.email }
    it { is_expected.to be_invalid }
  end
end

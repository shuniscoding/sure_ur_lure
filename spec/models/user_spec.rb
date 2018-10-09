require 'rails_helper'

RSpec.describe User, type: :model do

  # 有効なファクトリを持つこと(メール、パスワードがあれば有効な状態であること)
  it "has a valid factory" do
    expect(FactoryBot.build(:user)).to be_valid
  end
  
  # メールアドレスがなければ無効な状態であること
  it "is invalid without an email address" do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank") 
  end

  # パスワードがなければ無効な状態であること
  it "is invalid without an password" do
    user = FactoryBot.build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank") 
  end 
  
  # 重複したメールアドレスなら無効な状態であること
  it "is invalid with a duplicate email address" do
    FactoryBot.create(:user, email: "sample@example.com")
    user = FactoryBot.build(:user, email: "sample@example.com")
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end
end

require 'rails_helper' #RSpecを利用する際に、共通の設定を書いておくファイル

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'name,email,password,password_confirmationが存在すれば登録できること' do
        expect(@user).to be_valid      
      end

      it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
        @user.password = '123abc'
        @user.password_confirmation = '123abc'
        expect(@user).to be_valid
      end
    end

    context '新規登録できないとき' do
    end

  end

end

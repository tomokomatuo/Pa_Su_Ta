require 'rails_helper'
RSpec.describe 'ユーザー・スタイリスト管理機能', type: :system do
  describe 'サインインする' do
    context 'ユーザーを登録した場合' do
      it 'ユーザー詳細画面に飛ぶ' do
        visit new_user_path
        fill_in 'user[name]', with: 'testuser2'
        fill_in 'user[email]', with: 'testuser2@gmail.com'
        fill_in 'user[nickname]', with: 'testuser2'
        fill_in 'user[address]', with: 'testuser2'
        fill_in 'user[phone_number]', with: '1111111112'
        fill_in 'user[password]', with: '000000'
        fill_in 'user[password_confirmation]', with: '000000'
        fill_in "user_birthday", with: Date.parse('1982-10-15')
        click_button '登録'
        expect(page).to have_content "testuser2さん"
      end
      it 'ログインしていない時はログイン画面に飛ぶテスト' do
        visit users_path
        expect(current_path).to eq new_session_path
      end
    end
  end
  describe 'ユーザー一覧画面' do
    before do
      user = FactoryBot.create(:user)
      visit new_session_path
      fill_in 'user[email]', with: 'testuser1@gmail.com'
      fill_in 'user[password]', with: '000000'
      click_button 'Log in'
    end
    context 'ユーザーを登録した場合' do
      it 'ユーザー一覧が表示される' do
          visit users_path
          expect(page).to have_content 'ユーザー一覧'
      end
    end
  end
  # describe 'ユーザー詳細画面' do
  #    context '任意のユーザー詳細画面に遷移した場合' do
  #      it '該当タスクの内容が表示されたページに遷移する' do
  #      end
  #      it 'コメントを登録できる' do
  #      end
  #     end
  # end
end
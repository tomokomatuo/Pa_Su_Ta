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
  describe 'ログイン後の遷移画面' do
    before do
      @user = FactoryBot.create(:user)
      visit new_session_path
      fill_in 'session[email]', with: 'testuser1@gmail.com'
      fill_in 'session[password]', with: '000000'
      click_button 'Log in'
      @second_user = FactoryBot.create(:second_user)
    end
    context 'スタイリスト一覧画面に移行した場合' do
      it 'スタイリスト一覧が表示される' do
          visit users_path
          expect(page).to have_content 'スタイリスト一覧'
      end
      it 'スタイリストをフォローできる' do
        visit users_path
        click_on 'following_user', match: :first
        visit user_path(@user)
        expect(page).to have_content '1 following'
     end
    end
      context '任意のユーザー詳細画面に遷移した場合' do
       it 'コメントを登録できる' do
        visit users_path
        visit user_path(@second_user)
        fill_in 'comment[review]', with: 'こんにちは'
        # find('#toukou').click
        click_on '投稿する'
        expect(page).to have_content "こんにちは"
       end
     end
     context 'メッセージ画面に遷移した場合' do
      it 'メッセージを投稿できる' do
      conversation_a = Conversation.create(sender_id: @user.id, recipient_id: @second_user.id)
      visit conversation_messages_path(conversation_a)
      fill_in 'message_body', with: 'こんにちは'
      click_on 'メッセージする'
      expect(page).to have_content "こんにちは"
      end
      it 'ログアウトできる' do
       click_on 'ログアウト'
       expect(current_path).to eq new_session_path
      end
      it '退会できる' do
        click_on '退会'
        # page.driver.browser.switch_to.alert.accept
        expect(current_path).to eq new_user_path
      end
      it '登録ページに行けない' do
        visit new_user_path
        expect(current_path).to eq user_path(@user)
      end
    end
  end
end
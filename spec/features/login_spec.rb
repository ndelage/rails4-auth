require 'spec_helper'

describe "Login" do
  before do
    @user = User.create!(email: "user@example.com",
                         password: "password",
                         password_confirmation: "password")
  end

  it "signs me in" do
    visit login_path

    within("#login") do
      fill_in 'email', :with => 'user@example.com'
      fill_in 'password', :with => 'password'
    end
    click_button 'Login'

    expect(page).to have_content 'Welcome Home!'
  end

  it "displays an error when incorrect creds are submitted" do
    visit login_path

    within("#login") do
      fill_in 'email', :with => 'user@example.com'
      fill_in 'password', :with => 'not the password'
    end
    click_button 'Login'

    expect(page).to have_content 'Incorrect email or password'
  end
end

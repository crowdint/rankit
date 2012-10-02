Given /^a user exists with email "(.*?)"$/ do |email|
  @user = Rankit::User.create :email => email
  @user.password = '12345'
  @user.password_confirmation = '12345'

  @user.save!
end

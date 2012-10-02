user = Rankit::User.new :email => 'test@example.com'
user.password = '12345'
user.password_confirmation = '12345'

user.save

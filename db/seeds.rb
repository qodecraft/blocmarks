
require 'faker'

user = User.new(
   name:     'Moderator User',
   email:    'moderator@example.com',
   password: 'helloworld',
  )
user.save!
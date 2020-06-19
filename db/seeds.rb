@user = User.create!(email: "test0@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "John", last_name: "Smith")

puts "1 user have been created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 posts have been created"

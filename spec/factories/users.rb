FactoryBot.define do
  factory :user do
    first_name {"John"}
    last_name {"Smith"}
    email { "test0@test.com" }
    password { "asdfasdf"}
    password_confirmation { "asdfasdf"}
  end

  factory :admin_user, class: "AdminUser" do
    first_name {"Admin"}
    last_name {"User"}
    email { "admin@test.com" }
    password { "asdfasdf"}
    password_confirmation { "asdfasdf"}

  end
end

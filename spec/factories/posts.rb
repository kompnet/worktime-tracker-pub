FactoryBot.define do
  factory :post do
    date { Date.today }
    rationale { "Soma rationale" }
  end

  factory :second_post, class: "Post" do
    date { Date.yesterday }
    rationale { "Other rationale" }
  end
end

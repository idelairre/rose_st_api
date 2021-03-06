fake_title = Faker::Lorem.word

FactoryGirl.define do
  factory :post do |p|
    p.title fake_title
    p.body { Faker::Lorem.paragraph }
    p.subheading { Faker::Lorem.sentence }
    p.title_url fake_title.slugify
    p.user_id { FactoryGirl.create(:user).id }
  end
end

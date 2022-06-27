FactoryBot.define do
  factory :item do
    association :user
    title                   {Faker::Name.initials}
    text                    {Faker::Lorem.sentence}
    category_id             {'2'}
    item_status_id         {'3'}
    shipping_cost_id  {'2'}
    prefecture_id           {'3'}
    shipping_date_id   {'2'}
    price                   {'1000'}  

    after(:build) do |item|
      item.image.attach(io: File.open('./app/assets/images/item-sample.png'), filename: 'test_image.png')
    end
  end
end

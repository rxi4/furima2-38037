FactoryBot.define do
  factory :item_order do
    user_id { Faker::Number.non_zero_digit }
    item_id { Faker::Number.non_zero_digit }
    token          {'tok_abcdefghijk00000000000000000'}
    postcode       {'123-4567'}
    prefecture_id  {3}
    city           {'横浜市'}
    block          {'1-1-1'}
    building       {'建物ビル'}
    phone_number   {'09022223333'} 
  end
end

FactoryBot.define do
    factory :payment do
        name { 'MyText' }
        amount { 1 }
        user { nil }
        category { nil }
    end
end
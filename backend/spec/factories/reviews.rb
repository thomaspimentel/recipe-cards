FactoryBot.define do
    factory :review do
        header      { "Great recipe!" }
        body        { "Potatoes are yummy, kale is yummy. What's not to like?!" }
        rating      { 5 }
        ip_address  { "192.10.10.1" }
        association :recipe
    end
end
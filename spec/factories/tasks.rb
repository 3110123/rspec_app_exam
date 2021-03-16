FactoryBot.define do
  factory :task do
    title { Faker::Lorem.word }
    status { rand(2) }
    from = Date.parse("2019/08/01")
    to   = Date.parse("2019/12/31")
    deadline { Random.rand(from..to) }

    trait :task2 do
      status { :done }
      completion_date { Time.current.yesterday }
    end
  end
end

FactoryBot.define do 
  factory :comment do 
    author_comment {"Artem"}
    sequence(:body_comment) { |number| "Comment number #{number}" }
  end
end
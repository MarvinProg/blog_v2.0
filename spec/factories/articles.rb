FactoryBot.define do 
  factory :article do 
    title {"First player ready"}
    text {"Cool film about gaming"}

    factory :article_whith_comments do 
      after :create do |article, evaluator| 
        create_list :comment, 4, article: article
      end
    end
  end
end
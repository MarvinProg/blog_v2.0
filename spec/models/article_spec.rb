require 'rails_helper'

describe Article do
  describe "validation" do 
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "associations" do 
    it { should have_many :comments }
  end

  describe "#method_subject" do 
    it "Return title the article" do 
      article = create(:article, title: "First player ready")
      expect(article.method_subject).to eq "First player ready"
    end
  end

  describe "#return_last_comment" do 
    it "returns the last comment" do 
      article = create(:article_whith_comments)
      expect(article.return_last_comment.body_comment).to eq "Comment number 4"
    end
  end
end
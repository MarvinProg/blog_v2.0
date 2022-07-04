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
end
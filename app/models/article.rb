class Article < ApplicationRecord
  validates :title, :text, presence: true
  has_many :comments

  def method_subject
    title
  end
end

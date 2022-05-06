class Contact < ApplicationRecord
  validates :email_journalist, :message_journalist, presence: true
  # validates :message_journalist, presence: true
end

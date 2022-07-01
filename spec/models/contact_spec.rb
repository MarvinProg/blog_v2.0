require 'rails_helper'

describe Contact do
  it { should validate_presence_of :email_journalist }
  it { should validate_presence_of :message_journalist }
end
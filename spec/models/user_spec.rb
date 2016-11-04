require 'rails_helper'

RSpec.describe User do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:nickname) }
  it { should validate_uniqueness_of(:nickname).case_insensitive }
end

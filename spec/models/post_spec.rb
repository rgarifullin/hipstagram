require 'rails_helper'

RSpec.describe Post do
  it { belong_to(:user) }

  it { should have_many(:comments).dependent(:destroy) }
end

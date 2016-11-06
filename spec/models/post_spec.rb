require 'rails_helper'

RSpec.describe Post do
  it { belong_to(:user) }
end

require 'rails_helper'

RSpec.describe Photo do
  it { should belong_to(:user) }
end

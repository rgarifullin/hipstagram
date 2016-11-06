require 'rails_helper'

RSpec.describe User do
  it { should have_one(:avatar).class_name('Photo').dependent(:destroy) }
  it { should have_many(:posts).dependent(:destroy) }
  it { should have_many(:comments).dependent(:destroy) }

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:nickname) }
  it { should validate_uniqueness_of(:nickname).case_insensitive }
end

require 'rails_helper'

RSpec.describe Opinion, type: :model do
  subject do
    described_class.new
  end

  describe 'validations' do
    it { should validate_presence_of(:text) }
  end

  describe 'Associations' do
    scenario { should belong_to(:author).class_name('User') }
  end
end

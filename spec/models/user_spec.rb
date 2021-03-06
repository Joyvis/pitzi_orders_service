# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validating' do
    describe 'presence of' do
      subject { create(:user) }
      it { is_expected.to validate_presence_of(:identification_document) }
      it do
        is_expected.to validate_uniqueness_of(:identification_document)
          .case_insensitive
      end
      it { is_expected.to accept_nested_attributes_for(:orders) }
      it { is_expected.to have_many(:orders) }
    end
  end
end

require 'rails_helper'

RSpec.describe ChatworkMessageService, type: :service do
  before :each do
    user = nil
    @service = ChatworkMessageService.new(user)
  end

  describe '#send_message' do
    pending 'send message to target chatroom.'
  end

  describe '#send_personal_message' do
    pending 'send message to target user\'s direct chatroom.'
  end
end

require 'rails_helper'

describe Friends::User do
  describe '#nico_url' do
    it 'show if uid given' do
      user = User.new(uid: 1)
      expect(user.nico_url).to eq 'http://www.nicovideo.jp/user/1'
    end

    it 'nil if hide_oauth' do
      user = User.new(uid: 1, hide_oauth: true)
      expect(user.nico_url).to be_nil
    end

    it 'nil if uid not given' do
      user = User.new
      expect(user.nico_url).to be_nil
    end
  end
end

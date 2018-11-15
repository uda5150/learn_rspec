require 'spec_helper'

RSpec.describe User do
  describe '#greet' do
    let(:params){{ name: 'たろう' }}
    let(:user){ User.new(params) }

    context '12歳以下の場合' do
      before do
        params.merge!(age:12)
      end

      it 'ひらがなで答えること' do
        expect(user.greet).to eq 'ぼくはたろうだよ。'
      end
    end

    context '13歳以上の場合' do
      before do
        params.merge!(age:13)
      end

      it '漢字で答えること' do
        expect(user.greet).to eq '僕はたろうです。'
      end
    end
  end
end
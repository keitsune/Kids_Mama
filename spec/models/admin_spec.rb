require 'rails_helper'

RSpec.describe 'Adminモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    subject { admin.valid? }

    #let!(:admin) { create(:admin) }

    context 'nameカラム' do
    it '空欄でないこと' do
        admin.name = ' '
        expect(admin).to be_invalid
        expect(admin.errors[:name]).to include("can't be blank")
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Kidモデルとの関係' do
      it 'N:1となっている' do
        expect(Kid.reflect_on_association(:admin).macro).to eq :belongs_to
      end
    end
  end
end



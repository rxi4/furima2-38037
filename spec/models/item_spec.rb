require 'rails_helper'

describe Item, type: :model do

  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品' do
    context '商品出品がうまくいくとき' do
      it '全ての項目が入力されていれば出品ができる' do
        expect(@item).to be_valid
      end
    
    context '商品出品がうまくいかないとき' do
      it 'imageが空では登録されない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'titleが空では登録されない' do
        @item.title = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Title can't be blank")
      end
      it 'textが空では登録されない' do
        @item.text = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Text can't be blank")
      end
        it 'category_idが空では登録されない' do
        @item.category_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
        it 'item_status_idが空では登録されない' do
        @item.item_status_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Item status can't be blank")
      end
        it 'shipping_cost_idが空では登録されない' do
        @item.shipping_cost_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping cost can't be blank")
      end
      it 'prefecture_idが空では登録されない' do
        @item.prefecture_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture can't be blank")
      end
      it 'shipping_date_idが空では登録されない' do
        @item.shipping_date_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping date can't be blank")
      end
      it 'category_idで1が選択された場合は登録されない' do
        @item.category_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Category must be other than 1")
      end
      it 'item_status_idで1が選択された場合は登録されない' do
        @item.item_status_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Item status must be other than 1")
      end
      it 'shipping_cost_idで1が選択された場合は登録されない' do
        @item.shipping_cost_id = '1' 
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping cost must be other than 1")
      end
      it 'prefecture_idで1が選択された場合は登録されない' do
        @item.prefecture_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture must be other than 1")
      end
      it 'shipping_date_idで1が選択された場合は登録されない' do
        @item.shipping_date_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping date must be other than 1")
      end
      it 'priceが空では登録されない' do
        @item.price = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank", "Price is invalid", "Price is not a number")
      end
      it 'priceが半角数字以外では登録できない' do
        @item.price = "１０００"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price is not a number")
      end
      it 'priceが300より少ないと登録できない' do
        @item.price = "50"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be greater than 300")
      end
      it 'priceが9999999より多いと登録できない' do
        @item.price = "10000000"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be less than 9999999")
      end
    end

    end
  end
end

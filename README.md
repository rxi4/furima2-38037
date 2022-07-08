# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリケーション名
フリマアプリ

# アプリケーション概要
ユーザーを登録すると商品を出品できるようになります。自身が出品した商品は、編集と削除をすることができます。他のユーザーが出品した商品は、クレジットカードを用いて購入することができます。

# URL
https://furima2-38037.herokuapp.com/

### Basic認証
・ ID: admin
・ Pass: 2222

# テスト用アカウント
出品者用
email: re0921@gmail.com
password: reiki0921

購入者用
email: no0921@gmail.com
password: reiki0921
### 購入者カード情報
番号：4242424242424242
期限：未来の年月であれば可能
セキュリティコード：123


## usersテーブル
| Column | Type            | Options               |

| nickname | string | null:false |
| email | string | null:false, unique: true |
| encrypted_password | string | null:false |
| last_name | string | null:false |
| first_name | string | null:false |
| last_name_kana | string | null:false |
| first_name_kana | string | null:false |
| birthday | date | null:false |
### Association
has_many :items
has_many :orders

## itemsテーブル
| Column | Type            | Options               |

| title | string | null:false |
| text | text | null:false |
| category_id | integer | null:false |
| item_status_id | integer | null:false |
| shipping_cost_id | integer | null:false |
| shipping_date_id | integer | null:false |
| prefecture_id | integer | null:false |
| price | integer | null:false |
| user | references | null:false, foreign_key:true |
### Association
belongs_to :user
has_one :order

## ordersテーブル
| Column | Type            | Options               |

| user | references | null:false, foreign_key:true |
| item | references | null:false, foreign_key:true |
### Association
belongs_to :user
belongs_to :item
has_one :address

## addressesテーブル
| Column | Type            | Options               |

| postcode | string | null:false |
| prefecture_id | integer | null:false |
| city | string | null:false |
| block | string | null:false |
| building | string |         |
| phone_number | string | null:false |
| order | references | null:false, foreign_key:true |
### association
belongs_to :order






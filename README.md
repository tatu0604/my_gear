# DB 設計

## usersテーブル

| Column       | Type   | Options                   |
| ------------ | ------ | ------------------------- |
| email        | string | null: false, unique: true |
| password     | string | null: false               |
| name         | string | null: false               |
| profile      | text   | null: false               |

### Association
- has_many :posts
- has_many :comments

## postsテーブル

| Column       | Type       | Options           |
| ------------ | ---------- | ----------------- |
| title        | string     | null: false       |
| summary      | text       |                   |
| user         | references | foreign_key: true |

### Association
- belongs_to :user
- has_many :comments

## commentsテーブル

| Column    | Type       | Options           |
| --------- | ---------- | ----------------- |
| text      | text       | null: false       |
| user      | references | foreign_key: true |
| prototype | references | foreign_key: true |

### Association
- belongs_to :user
- belongs_to :post

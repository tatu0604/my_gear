# My Gear
**リンク:** https://my-gear.herokuapp.com/

# 概要
**今まで知らなかった楽器プレイヤーと知り合って、交流を図りたい**という思いで制作しました。<br>
自分の楽器、新しく購入した写真を共有したり、所有している機材を整理して今何を持っているかまとめておくことができます。

楽器を始めた方から、ミュージシャンまで、誰とでも知り合うことができる楽器写真共有アプリケーションです。

![画像1](app/assets/images/readme1.png)

# 制作背景

# DEMO
# 工夫した点
# 使用した技術
## フロントエンド
HTML / CSS / JavaScript / jQuery
## バックエンド
Ruby / Ruby on Rails / RuboCop
## データベース
MySQL / Sequel Pro
## インフラ
## Webサーバ
## アプリケーションサーバ
## ソース管理
GitHub / GitHubDesktop
## テスト
RSpec
## エディタ
VSCode

# 機能一覧

# 実装中の機能

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
| title        | string     |                   |
| summary      | text       |                   |
| category_id  | integer    | null: false       |
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

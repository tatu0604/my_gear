# My Gear
**リンク:** https://my-gear.herokuapp.com/

# 概要
**今まで知らなかった楽器プレイヤーと知り合って、交流を図りたい**という思いで制作しました。<br>
自分の楽器、新しく購入した写真を共有したり、所有している機材を整理して今何を持っているかまとめておくことができます。

楽器を始めた方から、ミュージシャンまで、誰とでも知り合うことができる楽器写真共有アプリケーションです。

![画像1](app/assets/images/readme1.png)
![画像2](app/assets/images/readme2.png)

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
## ソース管理
GitHub / GitHubDesktop
## テスト
RSpec
## エディタ
VSCode

# 機能一覧
・ユーザー登録、ログイン機能
・ゲストログイン機能
・楽器写真投稿機能
・画像プレビュー機能
・投稿編集機能
・投稿削除機能
・
・
・
・
・
・
・
・
・
・
・
・

# 実装中の機能
・ユーザー編集機能
・コンタクトフォーム  
・ヘルプページ  
・エラーハンドリング  
・複数画像投稿  
・インクリメンタルサーチ(Ajax)  
・文字数カウント(Ajax)  
・フォロー機能  
・フォロー通知  
・いいね機能  
・いいね通知  
・コメント(Ajax)  
・コメント数表示機能  
・ページネーション  
・チャット機能  
・ユーザーごとのアバター表示  
・レスポンシブ対応

【インフラ】  
・Capistranoを使用し、EC2への自動デプロイ

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

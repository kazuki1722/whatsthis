# アプリ名　Whatsthis
# 概要
- デプロイ先　https://radiant-river-32942.herokuapp.com/
- テストアカウント
email: sample@sample.com
password: sample

## 何のアプリケーションなのか
- ユーザーが画像を投稿し、    
![Animated GIF-downsized](https://user-images.githubusercontent.com/66103132/88159037-bafb5800-cc47-11ea-822c-11a13dd64a43.gif)

- その画像が何なのかを教え合うためのアプリケーションです。
![Animated GIF-downsized (1)](https://user-images.githubusercontent.com/66103132/88159704-a1a6db80-cc48-11ea-9f87-7e4513ff59fa.gif)

## 実装した機能
- deviseでのユーザー管理機能
- 投稿一覧画面、kaminariでのページネーション
- 投稿詳細ページと、そのページにコメント送信機能
- carrierwaveによる画像投稿機能
- コメント送信機能の非同期化、自動スクロール


## アプリについて
- サインアップしなくても投稿一覧ページと詳細ページは見れます。
- サインアップすると投稿機能とコメント送信機能が使えるようになります。

## 企画背景
- 誰でも使えて便利なものを想像してつくった。
- カリキュラムの復習にもなる。

# 工夫したポイント
# 使用技術
- 開発環境　言語：Ruby, Ruby on Rails, haml, scss, javascript, jquery　ツール: Visual Studio Code/Github　DB:MySQL　サーバー：heroku

# 課題や今後実装したい機能
- 画像投稿時、選択した画像がjavascriptで表示されるようにしたい。
- いいね機能、またいいねの数での並び替え
- bootstrapでのdeviseのビューのデザインを整える
- マイページ作成
- Rspec入門書をインプットしてテストをかく
- rails tutorialでインプットと復習かねて機能追加


# DB設計


